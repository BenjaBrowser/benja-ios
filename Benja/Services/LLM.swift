//
//  LLM.swift
//  Benja
//
//  Created by Fernando Martín Ortiz on 20/6/25.
//

import LLM

protocol LanguageModel {
    func prepare() async throws
    func reply(to prompt: String) async throws -> String
}

final class HuggingFaceLLM: LanguageModel {
    private var llm: LLM!

    func prepare() async throws {
        // This will download a new Huggingface model.
        let systemPrompt = "You are a sentient AI with emotions."
        llm = try await LLM(from: HuggingFaceModel("unsloth/Qwen3-0.6B-GGUF", .Q4_K_M, template: .chatML(systemPrompt)))!
    }

    func reply(to prompt: String) async throws -> String {
        let question = llm.preprocess(prompt, [])
        let answer = await llm.getCompletion(from: question)
        return answer
    }
}
