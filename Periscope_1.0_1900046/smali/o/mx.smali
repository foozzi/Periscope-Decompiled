.class Lo/mx;
.super Lo/lz;
.source ""


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/lz<Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;>;"
    }
.end annotation


# instance fields
.field final synthetic QH:Lo/mv;


# direct methods
.method constructor <init>(Lo/mv;)V
    .locals 0

    .line 131
    iput-object p1, p0, Lo/mx;->QH:Lo/mv;

    invoke-direct {p0}, Lo/lz;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/mf;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/mf<Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;>;)V"
        }
    .end annotation

    .line 134
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 135
    iget-object v0, p1, Lo/mf;->data:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;

    move-object v4, v0

    .line 136
    const-string v0, "screen_name"

    iget-object v1, v4, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->nF:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v0, "user_id"

    iget-wide v1, v4, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->Rq:J

    invoke-virtual {v3, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 138
    const-string v0, "tk"

    iget-object v1, v4, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->Rj:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qn:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v0, "ts"

    iget-object v1, v4, Lcom/twitter/sdk/android/core/internal/oauth/OAuthResponse;->Rj:Lcom/twitter/sdk/android/core/TwitterAuthToken;

    iget-object v1, v1, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qo:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v0, p0, Lo/mx;->QH:Lo/mv;

    iget-object v0, v0, Lo/mv;->QE:Lo/mv$if;

    const/4 v1, -0x1

    invoke-interface {v0, v1, v3}, Lo/mv$if;->ˊ(ILandroid/content/Intent;)V

    .line 142
    return-void
.end method

.method public ˊ(Lo/mo;)V
    .locals 3

    .line 146
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Twitter"

    const-string v2, "Failed to get access token"

    invoke-interface {v0, v1, v2, p1}, Lo/ps;->ˏ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    iget-object v0, p0, Lo/mx;->QH:Lo/mv;

    new-instance v1, Lo/ml;

    const-string v2, "Failed to get access token"

    invoke-direct {v1, v2}, Lo/ml;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lo/mv;->ˊ(ILo/ml;)V

    .line 151
    return-void
.end method
