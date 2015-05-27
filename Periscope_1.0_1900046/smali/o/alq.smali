.class Lo/alq;
.super Lo/alv;
.source ""


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

    .line 160
    iput-object p1, p0, Lo/alq;->bMz:Lo/alo;

    invoke-direct {p0}, Lo/alv;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 168
    iget-object v0, p0, Lo/alq;->bMz:Lo/alo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/alo;->ˊ(Lo/alo;Z)Z

    .line 169
    iget-object v0, p0, Lo/alq;->bMz:Lo/alo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/alo;->ˋ(Lo/alo;Z)Z

    .line 170
    iget-object v0, p0, Lo/alq;->bMz:Lo/alo;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/alo;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lo/alq;->bMz:Lo/alo;

    invoke-static {v0}, Lo/alo;->ˊ(Lo/alo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lo/alq;->bMz:Lo/alo;

    invoke-static {v0}, Lo/alo;->ˋ(Lo/alo;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lo/alq;->bMz:Lo/alo;

    invoke-static {v0}, Lo/alo;->ˎ(Lo/alo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lo/alq;->bMz:Lo/alo;

    invoke-virtual {v0}, Lo/alo;->clear()V

    .line 179
    iget-object v0, p0, Lo/alq;->bMz:Lo/alo;

    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v1

    iget-object v2, p0, Lo/alq;->bMz:Lo/alo;

    invoke-static {v2}, Lo/alo;->ˎ(Lo/alo;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/aad;->נּ(Ljava/lang/String;)Ltv/periscope/android/api/PsUser;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/alo;->ᐝ(Ltv/periscope/android/api/PsUser;)V

    .line 180
    iget-object v0, p0, Lo/alq;->bMz:Lo/alo;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lo/alo;->ˊ(Lo/alo;Ljava/lang/String;)Ljava/lang/String;

    .line 181
    iget-object v0, p0, Lo/alq;->bMz:Lo/alo;

    invoke-virtual {v0}, Lo/alo;->show()V

    .line 183
    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 163
    iget-object v0, p0, Lo/alq;->bMz:Lo/alo;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lo/alo;->ˊ(Lo/alo;Z)Z

    .line 164
    return-void
.end method
