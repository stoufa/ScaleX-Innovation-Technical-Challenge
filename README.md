# ScaleX Innovation Technical Challenge

[ScaleX Innovation] AI Engineer Technical Challenge

- Project #1: Multi-Source RAG Chatbot

- Video: [ScaleX Innovation Technical Challenge - 2025 04 17 16 31 16](https://youtu.be/IXFS6rKlMF0)

Langgraph Bot Architecture

<p align="center">
  <img src="langgraph_bot_architecture.png" alt="langgraph_bot_architecture"/>
</p>

- oracle: the decision maker, an llm with a pre-defined prompt with access to all of the tools we made (rag_search_filter, rag_search, fetch_arxiv, web_search, and final_answer); given the user query, it decides which tool(s) to use, in the context of our project:
  - native llm response: go directly to "final_answer" without using any other tools
  - vector store-based rag: use the rag\_\* tools before returning an answer
  - web search-based: leverage the web_search tool to access online resources

Tools used:

- langchain + langgraph: for building the bot architecture itself along with the tools
- open ai gpt-4o: our llm (large language model) of choice
- pinecone: vector store
- serp api: web search api
- chatgpt.com: (+ windsurf) as coding assistants and for troubleshooting purposes

Folder structure

```
.
├── app
│   ├── cli.py
│   ├── run.ps1
│   ├── run.sh
│   └── tools
│       ├── fetch_arxiv.py
│       ├── final_answer.py
│       ├── __init__.py
│       ├── rag.py
│       └── web_search.py
├── docker-compose.yml
├── Dockerfile
├── env.template
└── requirements.txt
```

References

- [LangGraph in One Video - Recruitment Agency Workflow | Beginner Friendly Explanation with Code - YouTube](https://www.youtube.com/watch?v=wvNgKx2e_LA)
- [LangChain Mastery in 2025 | Full 5 Hour Course - YouTube](https://www.youtube.com/watch?v=Cyv-dgv80kE)
- [LangGraph - YouTube](https://www.youtube.com/playlist?list=PLZoTAELRMXVNAprLfaHq64tBeCGvWSVpv)
- [Agentic AI With Langgraph - YouTube](https://www.youtube.com/playlist?list=PLZoTAELRMXVPFd7JdvB-rnTb_5V26NYNO)
- [Updated Langchain - YouTube](https://www.youtube.com/playlist?list=PLZoTAELRMXVOQPRG7VAuHL--y97opD5GQ)
