.class Lo/נּ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ᒎ:Lo/一;


# direct methods
.method constructor <init>(Lo/一;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lo/נּ;->ᒎ:Lo/一;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 125
    iget-object v0, p0, Lo/נּ;->ᒎ:Lo/一;

    invoke-static {v0}, Lo/一;->ˊ(Lo/一;)V

    .line 126
    iget-object v0, p0, Lo/נּ;->ᒎ:Lo/一;

    iget-object v1, p0, Lo/נּ;->ᒎ:Lo/一;

    invoke-static {v1}, Lo/一;->ˎ(Lo/一;)Lo/ー;

    move-result-object v1

    invoke-static {v1}, Lo/ﺑ;->ﹳ(Landroid/view/View;)Lo/ᵘ;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/ᵘ;->ᐝ(F)Lo/ᵘ;

    move-result-object v1

    iget-object v2, p0, Lo/נּ;->ᒎ:Lo/一;

    invoke-static {v2}, Lo/一;->ˋ(Lo/一;)Lo/ﭔ;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/ᵘ;->ˊ(Lo/ﭔ;)Lo/ᵘ;

    move-result-object v1

    invoke-static {v0, v1}, Lo/一;->ˊ(Lo/一;Lo/ᵘ;)Lo/ᵘ;

    .line 128
    iget-object v0, p0, Lo/נּ;->ᒎ:Lo/一;

    invoke-static {v0}, Lo/一;->ˏ(Lo/一;)Lo/ー;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/נּ;->ᒎ:Lo/一;

    invoke-static {v0}, Lo/一;->ˏ(Lo/一;)Lo/ー;

    move-result-object v0

    invoke-virtual {v0}, Lo/ー;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 129
    iget-object v0, p0, Lo/נּ;->ᒎ:Lo/一;

    iget-object v1, p0, Lo/נּ;->ᒎ:Lo/一;

    invoke-static {v1}, Lo/一;->ˏ(Lo/一;)Lo/ー;

    move-result-object v1

    invoke-static {v1}, Lo/ﺑ;->ﹳ(Landroid/view/View;)Lo/ᵘ;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/ᵘ;->ᐝ(F)Lo/ᵘ;

    move-result-object v1

    iget-object v2, p0, Lo/נּ;->ᒎ:Lo/一;

    invoke-static {v2}, Lo/一;->ᐝ(Lo/一;)Lo/ﭔ;

    move-result-object v2

    invoke-virtual {v1, v2}, Lo/ᵘ;->ˊ(Lo/ﭔ;)Lo/ᵘ;

    move-result-object v1

    invoke-static {v0, v1}, Lo/一;->ˋ(Lo/一;Lo/ᵘ;)Lo/ᵘ;

    .line 132
    :cond_0
    return-void
.end method
