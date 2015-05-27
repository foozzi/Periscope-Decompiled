.class Lo/ῑ$ᐝ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ῑ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "\u141d"
.end annotation


# instance fields
.field final synthetic j:Lo/ῑ;


# direct methods
.method private constructor <init>(Lo/ῑ;)V
    .locals 0

    .line 1724
    iput-object p1, p0, Lo/ῑ$ᐝ;->j:Lo/ῑ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ῑ;Lo/‿;)V
    .locals 0

    .line 1724
    invoke-direct {p0, p1}, Lo/ῑ$ᐝ;-><init>(Lo/ῑ;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1726
    iget-object v0, p0, Lo/ῑ$ᐝ;->j:Lo/ῑ;

    invoke-static {v0}, Lo/ῑ;->ˊ(Lo/ῑ;)Lo/ῑ$if;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ῑ$ᐝ;->j:Lo/ῑ;

    invoke-static {v0}, Lo/ῑ;->ˊ(Lo/ῑ;)Lo/ῑ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/ῑ$if;->getCount()I

    move-result v0

    iget-object v1, p0, Lo/ῑ$ᐝ;->j:Lo/ῑ;

    invoke-static {v1}, Lo/ῑ;->ˊ(Lo/ῑ;)Lo/ῑ$if;

    move-result-object v1

    invoke-virtual {v1}, Lo/ῑ$if;->getChildCount()I

    move-result v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lo/ῑ$ᐝ;->j:Lo/ῑ;

    invoke-static {v0}, Lo/ῑ;->ˊ(Lo/ῑ;)Lo/ῑ$if;

    move-result-object v0

    invoke-virtual {v0}, Lo/ῑ$if;->getChildCount()I

    move-result v0

    iget-object v1, p0, Lo/ῑ$ᐝ;->j:Lo/ῑ;

    iget v1, v1, Lo/ῑ;->ﻐ:I

    if-gt v0, v1, :cond_0

    .line 1728
    iget-object v0, p0, Lo/ῑ$ᐝ;->j:Lo/ῑ;

    invoke-static {v0}, Lo/ῑ;->ˋ(Lo/ῑ;)Landroid/widget/PopupWindow;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1729
    iget-object v0, p0, Lo/ῑ$ᐝ;->j:Lo/ῑ;

    invoke-virtual {v0}, Lo/ῑ;->show()V

    .line 1731
    :cond_0
    return-void
.end method
