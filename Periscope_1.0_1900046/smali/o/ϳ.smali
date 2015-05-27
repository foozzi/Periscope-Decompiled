.class Lo/ϳ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cH:Lo/ɔ;


# direct methods
.method constructor <init>(Lo/ɔ;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lo/ϳ;->cH:Lo/ɔ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2

    .line 333
    iget-object v0, p0, Lo/ϳ;->cH:Lo/ɔ;

    invoke-static {v0}, Lo/ɔ;->ˎ(Lo/ɔ;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lo/ϳ;->cH:Lo/ɔ;

    invoke-static {v0}, Lo/ɔ;->ˎ(Lo/ɔ;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    iget-object v1, p0, Lo/ϳ;->cH:Lo/ɔ;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 336
    :cond_0
    return-void
.end method
