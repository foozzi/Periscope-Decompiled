.class Landroid/support/v7/internal/widget/SpinnerCompat$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/support/v7/internal/widget/SpinnerCompat$ˎ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/SpinnerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "if"
.end annotation


# instance fields
.field final synthetic ᒸ:Landroid/support/v7/internal/widget/SpinnerCompat;

.field private ᒹ:Landroid/app/AlertDialog;

.field private ᓙ:Landroid/widget/ListAdapter;

.field private ᔬ:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;)V
    .locals 0

    .line 893
    iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$if;->ᒸ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/internal/widget/SpinnerCompat;Lo/ʅ;)V
    .locals 0

    .line 893
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/SpinnerCompat$if;-><init>(Landroid/support/v7/internal/widget/SpinnerCompat;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 902
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$if;->ᒹ:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$if;->ᒹ:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 904
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$if;->ᒹ:Landroid/app/AlertDialog;

    .line 906
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 909
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$if;->ᒹ:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$if;->ᒹ:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 938
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$if;->ᒸ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0, p2}, Landroid/support/v7/internal/widget/SpinnerCompat;->setSelection(I)V

    .line 939
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$if;->ᒸ:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v0, v0, Landroid/support/v7/internal/widget/SpinnerCompat;->Ŷ:Lo/ﹹ$ˊ;

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$if;->ᒸ:Landroid/support/v7/internal/widget/SpinnerCompat;

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$if;->ᓙ:Landroid/widget/ListAdapter;

    invoke-interface {v1, p2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, p2, v1, v2}, Landroid/support/v7/internal/widget/SpinnerCompat;->performItemClick(Landroid/view/View;IJ)Z

    .line 942
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat$if;->dismiss()V

    .line 943
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 913
    iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$if;->ᓙ:Landroid/widget/ListAdapter;

    .line 914
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 2

    .line 957
    const-string v0, "Spinner"

    const-string v1, "Cannot set horizontal offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 2

    .line 952
    const-string v0, "Spinner"

    const-string v1, "Cannot set vertical offset for MODE_DIALOG, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    return-void
.end method

.method public show()V
    .locals 3

    .line 925
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$if;->ᓙ:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 926
    return-void

    .line 928
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$if;->ᒸ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/SpinnerCompat;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 929
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$if;->ᔬ:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 930
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$if;->ᔬ:Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 932
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$if;->ᓙ:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$if;->ᒸ:Landroid/support/v7/internal/widget/SpinnerCompat;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/SpinnerCompat;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {v2, v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$if;->ᒹ:Landroid/app/AlertDialog;

    .line 934
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$if;->ᒹ:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 935
    return-void
.end method

.method public ʼ(Ljava/lang/CharSequence;)V
    .locals 0

    .line 917
    iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$if;->ᔬ:Ljava/lang/CharSequence;

    .line 918
    return-void
.end method
