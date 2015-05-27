.class public Lo/aef$ˋ;
.super Lo/aef;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02cb"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aef<Lo/aeh$\u02cb;>;"
    }
.end annotation


# instance fields
.field private final bzM:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/ady;)V
    .locals 1

    .line 267
    invoke-direct {p0, p1, p2}, Lo/aef;-><init>(Landroid/view/View;Lo/ady;)V

    .line 268
    const v0, 0x7f0b005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/aef$ˋ;->bzM:Landroid/widget/TextView;

    .line 269
    return-void
.end method

.method public static ˎ(Landroid/content/Context;Landroid/view/ViewGroup;Lo/ady;)Lo/aef$ˋ;
    .locals 4

    .line 259
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 261
    new-instance v0, Lo/aef$ˋ;

    invoke-direct {v0, v3, p2}, Lo/aef$ˋ;-><init>(Landroid/view/View;Lo/ady;)V

    return-object v0
.end method


# virtual methods
.method public ˊ(Lo/aeh$ˋ;)V
    .locals 2

    .line 273
    iget-object v0, p0, Lo/aef$ˋ;->bzM:Landroid/widget/TextView;

    invoke-virtual {p1}, Lo/aeh$ˋ;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    return-void
.end method

.method public bridge synthetic ˊ(Lo/aeh;)V
    .locals 1

    .line 256
    move-object v0, p1

    check-cast v0, Lo/aeh$ˋ;

    invoke-virtual {p0, v0}, Lo/aef$ˋ;->ˊ(Lo/aeh$ˋ;)V

    return-void
.end method
