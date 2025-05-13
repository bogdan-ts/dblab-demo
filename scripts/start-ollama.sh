docker run -d --name ollama -p 11434:11434 ollama/ollama
docker exec -it ollama ollama pull tinyllama:latest