.class public Lo/aai;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aai$if;
    }
.end annotation


# instance fields
.field public bsV:Lo/aai$if;

.field public bsW:Lretrofit/RetrofitError;

.field public data:Ljava/lang/Object;

.field public hN:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lo/aai$if;Ljava/lang/Exception;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lo/aai;->bsV:Lo/aai$if;

    .line 30
    iput-object p2, p0, Lo/aai;->hN:Ljava/lang/Exception;

    .line 31
    return-void
.end method

.method public constructor <init>(Lo/aai$if;Ljava/lang/Object;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lo/aai;->bsV:Lo/aai$if;

    .line 14
    iput-object p2, p0, Lo/aai;->data:Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public constructor <init>(Lo/aai$if;Lretrofit/RetrofitError;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lo/aai;->bsV:Lo/aai$if;

    .line 19
    iput-object p2, p0, Lo/aai;->bsW:Lretrofit/RetrofitError;

    .line 20
    return-void
.end method

.method public constructor <init>(Lo/aai$if;Lretrofit/RetrofitError;Ljava/lang/Object;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lo/aai;->bsV:Lo/aai$if;

    .line 24
    iput-object p2, p0, Lo/aai;->bsW:Lretrofit/RetrofitError;

    .line 25
    iput-object p3, p0, Lo/aai;->data:Ljava/lang/Object;

    .line 26
    return-void
.end method


# virtual methods
.method public getReason()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lo/aai;->bsW:Lretrofit/RetrofitError;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/aai;->bsW:Lretrofit/RetrofitError;

    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lo/aai;->bsW:Lretrofit/RetrofitError;

    invoke-virtual {v0}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit/client/Response;->getReason()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 45
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public vA()Z
    .locals 1

    .line 34
    iget-object v0, p0, Lo/aai;->bsW:Lretrofit/RetrofitError;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/aai;->hN:Ljava/lang/Exception;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
