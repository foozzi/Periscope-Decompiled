.class public interface abstract Lcom/twitter/sdk/android/core/services/AccountService;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;)Lo/oo;
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lretrofit/http/Query;
            value = "include_entities"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Lretrofit/http/Query;
            value = "skip_status"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/1.1/account/verify_credentials.json"
    .end annotation
.end method

.method public abstract verifyCredentials(Ljava/lang/Boolean;Ljava/lang/Boolean;Lo/lz;)V
    .param p1    # Ljava/lang/Boolean;
        .annotation runtime Lretrofit/http/Query;
            value = "include_entities"
        .end annotation
    .end param
    .param p2    # Ljava/lang/Boolean;
        .annotation runtime Lretrofit/http/Query;
            value = "skip_status"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/Boolean;Ljava/lang/Boolean;Lo/lz<Lo/oo;>;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/1.1/account/verify_credentials.json"
    .end annotation
.end method