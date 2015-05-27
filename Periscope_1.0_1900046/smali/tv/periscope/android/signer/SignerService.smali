.class public interface abstract Ltv/periscope/android/signer/SignerService;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract sign(Lo/ada;Lretrofit/Callback;)V
    .param p1    # Lo/ada;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/ada;Lretrofit/Callback<Lretrofit/client/Response;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/sign"
    .end annotation
.end method

.method public abstract uploadPadding(Ljava/lang/String;Lretrofit/mime/TypedFile;)Lo/yi;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Part;
            value = "cookie"
        .end annotation
    .end param
    .param p2    # Lretrofit/mime/TypedFile;
        .annotation runtime Lretrofit/http/Part;
            value = "padding"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/Multipart;
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/upload"
    .end annotation
.end method
