.class public interface abstract Lcom/squareup/okhttp/internal/spdy/FrameReader;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
    }
.end annotation


# virtual methods
.method public abstract nextFrame(Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;)Z
.end method

.method public abstract readConnectionPreface()V
.end method
