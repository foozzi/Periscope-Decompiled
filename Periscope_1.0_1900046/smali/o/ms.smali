.class public abstract Lo/ms;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final Qx:I

.field private final Qy:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

.field private final Qz:Lo/lz;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/lz<Lo/mr;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/lz;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lcom/twitter/sdk/android/core/TwitterAuthConfig;Lo/lz<Lo/mr;>;I)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lo/ms;->Qy:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    .line 35
    iput-object p2, p0, Lo/ms;->Qz:Lo/lz;

    .line 36
    iput p3, p0, Lo/ms;->Qx:I

    .line 37
    return-void
.end method


# virtual methods
.method be()Lcom/twitter/sdk/android/core/TwitterAuthConfig;
    .locals 1

    .line 40
    iget-object v0, p0, Lo/ms;->Qy:Lcom/twitter/sdk/android/core/TwitterAuthConfig;

    return-object v0
.end method

.method bl()Lo/lz;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()Lo/lz<Lo/mr;>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lo/ms;->Qz:Lo/lz;

    return-object v0
.end method

.method public ˊ(IILandroid/content/Intent;)Z
    .locals 9

    .line 63
    iget v0, p0, Lo/ms;->Qx:I

    if-eq v0, p1, :cond_0

    .line 64
    const/4 v0, 0x0

    return v0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lo/ms;->bl()Lo/lz;

    move-result-object v3

    .line 68
    if-eqz v3, :cond_3

    .line 69
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 70
    const-string v0, "tk"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 71
    const-string v0, "ts"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 72
    const-string v0, "screen_name"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 73
    const-string v0, "user_id"

    const-wide/16 v1, 0x0

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    .line 74
    new-instance v0, Lo/mr;

    new-instance v1, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    invoke-direct {v1, v4, v5}, Lcom/twitter/sdk/android/core/TwitterAuthToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1, v7, v8, v6}, Lo/mr;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lo/lz;->success(Ljava/lang/Object;Lretrofit/client/Response;)V

    .line 76
    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const-string v0, "auth_error"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 77
    const-string v0, "auth_error"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lo/ml;

    invoke-virtual {v3, v0}, Lo/lz;->ˊ(Lo/mo;)V

    goto :goto_0

    .line 80
    :cond_2
    new-instance v0, Lo/ml;

    const-string v1, "Authorize failed."

    invoke-direct {v0, v1}, Lo/ml;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Lo/lz;->ˊ(Lo/mo;)V

    .line 83
    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public abstract ˌ(Landroid/app/Activity;)Z
.end method
