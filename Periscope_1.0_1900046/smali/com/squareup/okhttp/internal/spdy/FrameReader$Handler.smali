.class public interface abstract Lcom/squareup/okhttp/internal/spdy/FrameReader$Handler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/FrameReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Handler"
.end annotation


# virtual methods
.method public abstract ackSettings()V
.end method

.method public abstract alternateService(ILjava/lang/String;Lo/uj;Ljava/lang/String;IJ)V
.end method

.method public abstract data(ZILo/ui;I)V
.end method

.method public abstract goAway(ILcom/squareup/okhttp/internal/spdy/ErrorCode;Lo/uj;)V
.end method

.method public abstract headers(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZIILjava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V"
        }
    .end annotation
.end method

.method public abstract ping(ZII)V
.end method

.method public abstract priority(IIIZ)V
.end method

.method public abstract pushPromise(IILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IILjava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;)V"
        }
    .end annotation
.end method

.method public abstract rstStream(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V
.end method

.method public abstract settings(ZLcom/squareup/okhttp/internal/spdy/Settings;)V
.end method

.method public abstract windowUpdate(IJ)V
.end method
