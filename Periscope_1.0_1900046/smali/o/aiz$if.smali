.class Lo/aiz$if;
.super Lo/lz;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aiz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/lz<Lo/mr;>;"
    }
.end annotation


# instance fields
.field final synthetic bGU:Lo/aiz;


# direct methods
.method private constructor <init>(Lo/aiz;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lo/aiz$if;->bGU:Lo/aiz;

    invoke-direct {p0}, Lo/lz;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/aiz;Lo/aiz$1;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lo/aiz$if;-><init>(Lo/aiz;)V

    return-void
.end method


# virtual methods
.method public ˊ(Lo/mf;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Lo/mf<Lo/mr;>;)V"
        }
    .end annotation

    .line 137
    iget-object v0, p1, Lo/mf;->data:Ljava/lang/Object;

    check-cast v0, Lo/mr;

    invoke-virtual {v0}, Lo/mr;->aX()Lo/lw;

    move-result-object v0

    check-cast v0, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    move-object v7, v0

    .line 139
    iget-object v0, p0, Lo/aiz$if;->bGU:Lo/aiz;

    invoke-static {v0}, Lo/aiz;->ˊ(Lo/aiz;)Lo/aad;

    move-result-object v0

    iget-object v1, v7, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qn:Ljava/lang/String;

    iget-object v2, v7, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lo/aad;->ᑊ(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lo/aiz$if;->bGU:Lo/aiz;

    invoke-static {v0}, Lo/aiz;->ˋ(Lo/aiz;)Lo/vn;

    move-result-object v0

    iget-object v1, v7, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qo:Ljava/lang/String;

    iget-object v2, v7, Lcom/twitter/sdk/android/core/TwitterAuthToken;->Qn:Ljava/lang/String;

    iget-object v3, p1, Lo/mf;->data:Ljava/lang/Object;

    check-cast v3, Lo/mr;

    invoke-virtual {v3}, Lo/mr;->getUserName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lo/mf;->data:Ljava/lang/Object;

    check-cast v4, Lo/mr;

    invoke-virtual {v4}, Lo/mr;->bk()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lo/aiz$if;->bGU:Lo/aiz;

    invoke-static {v5}, Lo/akn;->ו(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lo/vn;->ˊ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lo/aiz$if;->bGU:Lo/aiz;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lo/aiz$if;->bGU:Lo/aiz;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lo/aiz;->ˊ(Lo/aiz;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 144
    iget-object v0, p0, Lo/aiz$if;->bGU:Lo/aiz;

    invoke-static {v0}, Lo/aiz;->ˎ(Lo/aiz;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lo/aiz$if;->bGU:Lo/aiz;

    const v2, 0x7f06009e

    invoke-virtual {v1, v2}, Lo/aiz;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 145
    iget-object v0, p0, Lo/aiz$if;->bGU:Lo/aiz;

    invoke-static {v0}, Lo/aiz;->ˎ(Lo/aiz;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 146
    iget-object v0, p0, Lo/aiz$if;->bGU:Lo/aiz;

    invoke-static {v0}, Lo/aiz;->ˎ(Lo/aiz;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 147
    iget-object v0, p0, Lo/aiz$if;->bGU:Lo/aiz;

    invoke-static {v0}, Lo/aiz;->ˎ(Lo/aiz;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 148
    return-void
.end method

.method public ˊ(Lo/mo;)V
    .locals 0

    .line 153
    return-void
.end method
