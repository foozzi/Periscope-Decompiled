.class Lo/ng$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ng;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field final synthetic QW:Lo/ng;


# direct methods
.method private constructor <init>(Lo/ng;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lo/ng$if;->QW:Lo/ng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lo/ng;Lo/ng$1;)V
    .locals 0

    .line 137
    invoke-direct {p0, p1}, Lo/ng$if;-><init>(Lo/ng;)V

    return-void
.end method

.method private ˋ(Lo/lz;)V
    .locals 2

    .line 152
    if-nez p1, :cond_0

    .line 153
    const-string v0, "Twitter"

    const-string v1, "Callback must not be null, did you call setCallback?"

    invoke-static {v0, v1}, Lo/qh;->ﾞ(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    return-void
.end method

.method private ـ(Landroid/app/Activity;)V
    .locals 2

    .line 159
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    :cond_0
    const-string v0, "Twitter"

    const-string v1, "TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button."

    invoke-static {v0, v1}, Lo/qh;->ﾞ(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 141
    iget-object v0, p0, Lo/ng$if;->QW:Lo/ng;

    iget-object v0, v0, Lo/ng;->Qz:Lo/lz;

    invoke-direct {p0, v0}, Lo/ng$if;->ˋ(Lo/lz;)V

    .line 142
    iget-object v0, p0, Lo/ng$if;->QW:Lo/ng;

    iget-object v0, v0, Lo/ng;->QT:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lo/ng$if;->ـ(Landroid/app/Activity;)V

    .line 144
    iget-object v0, p0, Lo/ng$if;->QW:Lo/ng;

    invoke-virtual {v0}, Lo/ng;->bA()Lo/nf;

    move-result-object v0

    iget-object v1, p0, Lo/ng$if;->QW:Lo/ng;

    iget-object v1, v1, Lo/ng;->QT:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    iget-object v2, p0, Lo/ng$if;->QW:Lo/ng;

    iget-object v2, v2, Lo/ng;->Qz:Lo/lz;

    invoke-virtual {v0, v1, v2}, Lo/nf;->ˊ(Landroid/app/Activity;Lo/lz;)V

    .line 146
    iget-object v0, p0, Lo/ng$if;->QW:Lo/ng;

    iget-object v0, v0, Lo/ng;->QV:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lo/ng$if;->QW:Lo/ng;

    iget-object v0, v0, Lo/ng;->QV:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 149
    :cond_0
    return-void
.end method
