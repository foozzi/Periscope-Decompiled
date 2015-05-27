.class public interface abstract Lcom/squareup/okhttp/ws/WebSocketListener;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract onClose(ILjava/lang/String;)V
.end method

.method public abstract onFailure(Ljava/io/IOException;)V
.end method

.method public abstract onMessage(Lo/ui;Lcom/squareup/okhttp/ws/WebSocket$PayloadType;)V
.end method

.method public abstract onOpen(Lcom/squareup/okhttp/ws/WebSocket;Lcom/squareup/okhttp/Request;Lcom/squareup/okhttp/Response;)V
.end method

.method public abstract onPong(Lo/ue;)V
.end method
