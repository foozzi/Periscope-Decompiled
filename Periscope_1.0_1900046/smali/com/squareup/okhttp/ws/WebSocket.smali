.class public interface abstract Lcom/squareup/okhttp/ws/WebSocket;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/ws/WebSocket$PayloadType;
    }
.end annotation


# virtual methods
.method public abstract close(ILjava/lang/String;)V
.end method

.method public abstract newMessageSink(Lcom/squareup/okhttp/ws/WebSocket$PayloadType;)Lo/uh;
.end method

.method public abstract sendMessage(Lcom/squareup/okhttp/ws/WebSocket$PayloadType;Lo/ue;)V
.end method

.method public abstract sendPing(Lo/ue;)V
.end method
