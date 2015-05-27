.class Lo/х;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    .line 948
    iput-object p1, p0, Lo/х;->cH:Lo/ɔ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4

    .line 951
    iget-object v0, p0, Lo/х;->cH:Lo/ɔ;

    invoke-static {v0}, Lo/ɔ;->ˌ(Lo/ɔ;)Landroid/app/SearchableInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 952
    const/4 v0, 0x0

    return v0

    .line 962
    :cond_0
    iget-object v0, p0, Lo/х;->cH:Lo/ɔ;

    invoke-static {v0}, Lo/ɔ;->ˈ(Lo/ɔ;)Lo/ɔ$ˏ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ɔ$ˏ;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/х;->cH:Lo/ɔ;

    invoke-static {v0}, Lo/ɔ;->ˈ(Lo/ɔ;)Lo/ɔ$ˏ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ɔ$ˏ;->getListSelection()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 964
    iget-object v0, p0, Lo/х;->cH:Lo/ɔ;

    invoke-static {v0, p1, p2, p3}, Lo/ɔ;->ˊ(Lo/ɔ;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 969
    :cond_1
    iget-object v0, p0, Lo/х;->cH:Lo/ɔ;

    invoke-static {v0}, Lo/ɔ;->ˈ(Lo/ɔ;)Lo/ɔ$ˏ;

    move-result-object v0

    invoke-static {v0}, Lo/ɔ$ˏ;->ˊ(Lo/ɔ$ˏ;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Lo/ᒻ;->ˊ(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 970
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 971
    const/16 v0, 0x42

    if-ne p2, v0, :cond_2

    .line 972
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 975
    iget-object v0, p0, Lo/х;->cH:Lo/ɔ;

    iget-object v1, p0, Lo/х;->cH:Lo/ɔ;

    invoke-static {v1}, Lo/ɔ;->ˈ(Lo/ɔ;)Lo/ɔ$ˏ;

    move-result-object v1

    invoke-virtual {v1}, Lo/ɔ$ˏ;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3, v1}, Lo/ɔ;->ˊ(Lo/ɔ;ILjava/lang/String;Ljava/lang/String;)V

    .line 977
    const/4 v0, 0x1

    return v0

    .line 981
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
