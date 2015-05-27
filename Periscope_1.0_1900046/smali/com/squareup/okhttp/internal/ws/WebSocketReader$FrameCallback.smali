.class public interface abstract Lcom/squareup/okhttp/internal/ws/WebSocketReader$FrameCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/ws/WebSocketReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameCallback"
.end annotation


# virtual methods
.method public abstract onClose(ILjava/lang/String;)V
.end method

.method public abstract onMessage(Lo/ui;Lcom/squareup/okhttp/ws/WebSocket$PayloadType;)V
.end method

.method public abstract onPing(Lo/ue;)V
.end method

.method public abstract onPong(Lo/ue;)V
.end method
