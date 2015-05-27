.class Lo/ԍ;
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
.field final synthetic nN:Lo/ɬ;

.field final synthetic nO:Landroid/app/Activity;

.field final synthetic nP:Lo/ɬ$if;

.field final synthetic nQ:Lo/ᓾ;

.field final synthetic nR:Lo/tp;


# direct methods
.method constructor <init>(Lo/ɬ;Landroid/app/Activity;Lo/ɬ$if;Lo/ᓾ;Lo/tp;)V
    .locals 0

    .line 994
    iput-object p1, p0, Lo/ԍ;->nN:Lo/ɬ;

    iput-object p2, p0, Lo/ԍ;->nO:Landroid/app/Activity;

    iput-object p3, p0, Lo/ԍ;->nP:Lo/ɬ$if;

    iput-object p4, p0, Lo/ԍ;->nQ:Lo/ᓾ;

    iput-object p5, p0, Lo/ԍ;->nR:Lo/tp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 997
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lo/ԍ;->nO:Landroid/app/Activity;

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 999
    new-instance v6, Lo/օ;

    invoke-direct {v6, p0}, Lo/օ;-><init>(Lo/ԍ;)V

    .line 1007
    iget-object v0, p0, Lo/ԍ;->nO:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v7, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1011
    iget-object v0, p0, Lo/ԍ;->nN:Lo/ɬ;

    const/4 v1, 0x5

    invoke-static {v0, v7, v1}, Lo/ɬ;->ˊ(Lo/ɬ;FI)I

    move-result v8

    .line 1013
    new-instance v9, Landroid/widget/TextView;

    iget-object v0, p0, Lo/ԍ;->nO:Landroid/app/Activity;

    invoke-direct {v9, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1014
    const/16 v0, 0xf

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1015
    iget-object v0, p0, Lo/ԍ;->nQ:Lo/ᓾ;

    invoke-virtual {v0}, Lo/ᓾ;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1016
    iget-object v0, p0, Lo/ԍ;->nO:Landroid/app/Activity;

    const v1, 0x1030044

    invoke-virtual {v9, v0, v1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1017
    invoke-virtual {v9, v8, v8, v8, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1019
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1021
    new-instance v10, Landroid/widget/ScrollView;

    iget-object v0, p0, Lo/ԍ;->nO:Landroid/app/Activity;

    invoke-direct {v10, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 1022
    iget-object v0, p0, Lo/ԍ;->nN:Lo/ɬ;

    const/16 v1, 0xe

    invoke-static {v0, v7, v1}, Lo/ɬ;->ˊ(Lo/ɬ;FI)I

    move-result v0

    iget-object v1, p0, Lo/ԍ;->nN:Lo/ɬ;

    const/4 v2, 0x2

    invoke-static {v1, v7, v2}, Lo/ɬ;->ˊ(Lo/ɬ;FI)I

    move-result v1

    iget-object v2, p0, Lo/ԍ;->nN:Lo/ɬ;

    const/16 v3, 0xa

    invoke-static {v2, v7, v3}, Lo/ɬ;->ˊ(Lo/ɬ;FI)I

    move-result v2

    iget-object v3, p0, Lo/ԍ;->nN:Lo/ɬ;

    const/16 v4, 0xc

    invoke-static {v3, v7, v4}, Lo/ɬ;->ˊ(Lo/ɬ;FI)I

    move-result v3

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 1024
    invoke-virtual {v10, v9}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 1028
    invoke-virtual {v5, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lo/ԍ;->nQ:Lo/ᓾ;

    invoke-virtual {v1}, Lo/ᓾ;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lo/ԍ;->nQ:Lo/ᓾ;

    invoke-virtual {v1}, Lo/ᓾ;->ᒐ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1031
    iget-object v0, p0, Lo/ԍ;->nR:Lo/tp;

    iget-boolean v0, v0, Lo/tp;->YY:Z

    if-eqz v0, :cond_0

    .line 1032
    new-instance v11, Lo/א;

    invoke-direct {v11, p0}, Lo/א;-><init>(Lo/ԍ;)V

    .line 1039
    iget-object v0, p0, Lo/ԍ;->nQ:Lo/ᓾ;

    invoke-virtual {v0}, Lo/ᓾ;->ᓕ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1043
    :cond_0
    iget-object v0, p0, Lo/ԍ;->nR:Lo/tp;

    iget-boolean v0, v0, Lo/tp;->Za:Z

    if-eqz v0, :cond_1

    .line 1044
    new-instance v11, Lo/ע;

    invoke-direct {v11, p0}, Lo/ע;-><init>(Lo/ԍ;)V

    .line 1052
    iget-object v0, p0, Lo/ԍ;->nQ:Lo/ᓾ;

    invoke-virtual {v0}, Lo/ᓾ;->ᓓ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v11}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1056
    :cond_1
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1057
    return-void
.end method
