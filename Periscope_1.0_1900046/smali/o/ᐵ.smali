.class public Lo/ᐵ;
.super Lo/ʼ;


# instance fields
.field private BK:Landroid/content/DialogInterface$OnCancelListener;

.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lo/ʼ;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᐵ;->mDialog:Landroid/app/Dialog;

    const/4 v0, 0x0

    iput-object v0, p0, Lo/ᐵ;->BK:Landroid/content/DialogInterface$OnCancelListener;

    return-void
.end method

.method public static ˋ(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lo/ᐵ;
    .locals 3

    new-instance v1, Lo/ᐵ;

    invoke-direct {v1}, Lo/ᐵ;-><init>()V

    const-string v0, "Cannot display null dialog"

    invoke-static {p0, v0}, Lo/ﺧ;->ʼ(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Dialog;

    move-object v2, v0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iput-object v2, v1, Lo/ᐵ;->mDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_0

    iput-object p1, v1, Lo/ᐵ;->BK:Landroid/content/DialogInterface$OnCancelListener;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lo/ᐵ;->BK:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/ᐵ;->BK:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lo/ᐵ;->mDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/ᐵ;->setShowsDialog(Z)V

    :cond_0
    iget-object v0, p0, Lo/ᐵ;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public show(Lo/ˈ;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lo/ʼ;->show(Lo/ˈ;Ljava/lang/String;)V

    return-void
.end method
