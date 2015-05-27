.class Lo/ɟ;
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
.field final synthetic cH:Lo/ɔ;


# direct methods
.method constructor <init>(Lo/ɔ;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lo/ɟ;->cH:Lo/ɔ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 173
    iget-object v0, p0, Lo/ɟ;->cH:Lo/ɔ;

    invoke-virtual {v0}, Lo/ɔ;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    move-object v3, v0

    .line 176
    if-eqz v3, :cond_0

    .line 177
    sget-object v0, Lo/ɔ;->cw:Lo/ɔ$if;

    iget-object v1, p0, Lo/ɟ;->cH:Lo/ɔ;

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lo/ɔ$if;->ˊ(Landroid/view/inputmethod/InputMethodManager;Landroid/view/View;I)V

    .line 179
    :cond_0
    return-void
.end method
