.class Lo/ﭤ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ﮋ:Lo/ﭜ;


# direct methods
.method constructor <init>(Lo/ﭜ;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lo/ﭤ;->ﮋ:Lo/ﭜ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 143
    iget-object v0, p0, Lo/ﭤ;->ﮋ:Lo/ﭜ;

    invoke-virtual {v0}, Lo/ﭜ;->ܙ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lo/ﭤ;->ﮋ:Lo/ﭜ;

    invoke-virtual {v0}, Lo/ﭜ;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lo/ﭤ;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ˋ(Lo/ﭜ;)Lo/ῑ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ῑ;->dismiss()V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lo/ﭤ;->ﮋ:Lo/ﭜ;

    invoke-static {v0}, Lo/ﭜ;->ˋ(Lo/ﭜ;)Lo/ῑ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ῑ;->show()V

    .line 148
    iget-object v0, p0, Lo/ﭤ;->ﮋ:Lo/ﭜ;

    iget-object v0, v0, Lo/ﭜ;->ἶ:Lo/ˤ;

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lo/ﭤ;->ﮋ:Lo/ﭜ;

    iget-object v0, v0, Lo/ﭜ;->ἶ:Lo/ˤ;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ˤ;->ˎ(Z)V

    .line 153
    :cond_1
    :goto_0
    return-void
.end method
