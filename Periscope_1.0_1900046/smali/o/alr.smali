.class Lo/alr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bMz:Lo/alo;


# direct methods
.method constructor <init>(Lo/alo;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lo/alr;->bMz:Lo/alo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 223
    if-nez p2, :cond_1

    .line 224
    iget-object v0, p0, Lo/alr;->bMz:Lo/alo;

    invoke-static {v0}, Lo/alo;->ˏ(Lo/alo;)Ltv/periscope/android/api/PsUser;

    move-result-object v0

    iget-boolean v0, v0, Ltv/periscope/android/api/PsUser;->bpF:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lo/alr;->bMz:Lo/alo;

    invoke-static {v0}, Lo/alo;->ᐝ(Lo/alo;)Lo/als;

    move-result-object v0

    iget-object v1, p0, Lo/alr;->bMz:Lo/alo;

    invoke-static {v1}, Lo/alo;->ˏ(Lo/alo;)Ltv/periscope/android/api/PsUser;

    move-result-object v1

    iget-object v1, v1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/als;->ﭤ(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_0
    iget-object v0, p0, Lo/alr;->bMz:Lo/alo;

    invoke-static {v0}, Lo/alo;->ᐝ(Lo/alo;)Lo/als;

    move-result-object v0

    iget-object v1, p0, Lo/alr;->bMz:Lo/alo;

    invoke-static {v1}, Lo/alo;->ˏ(Lo/alo;)Ltv/periscope/android/api/PsUser;

    move-result-object v1

    iget-object v1, v1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    iget-object v2, p0, Lo/alr;->bMz:Lo/alo;

    invoke-static {v2}, Lo/alo;->ˏ(Lo/alo;)Ltv/periscope/android/api/PsUser;

    move-result-object v2

    iget-object v2, v2, Ltv/periscope/android/api/PsUser;->bpx:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lo/als;->ʾ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :cond_1
    :goto_0
    return-void
.end method
