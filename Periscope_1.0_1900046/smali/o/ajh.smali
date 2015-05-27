.class public Lo/ajh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/amx;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ajh$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/amx<Lo/aji;Lo/aad$if;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public bridge synthetic ˊ(Landroid/support/v7/widget/RecyclerView$ˑ;Ljava/lang/Object;I)V
    .locals 2

    .line 9
    move-object v0, p1

    check-cast v0, Lo/aji;

    move-object v1, p2

    check-cast v1, Lo/aad$if;

    invoke-virtual {p0, v0, v1, p3}, Lo/ajh;->ˊ(Lo/aji;Lo/aad$if;I)V

    return-void
.end method

.method public ˊ(Lo/aji;Lo/aad$if;I)V
    .locals 3

    .line 14
    iget-object v0, p1, Lo/aji;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 15
    sget-object v0, Lo/ajh$1;->bsG:[I

    iget-object v1, p2, Lo/aad$if;->bsH:Lo/aah;

    invoke-virtual {v1}, Lo/aah;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 17
    :pswitch_0
    iget-object v0, p1, Lo/aji;->bHs:Landroid/widget/TextView;

    const v1, 0x7f06008e

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    goto :goto_1

    .line 21
    :pswitch_1
    iget-object v0, p1, Lo/aji;->bHs:Landroid/widget/TextView;

    const v1, 0x7f060090

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    goto :goto_1

    .line 25
    :pswitch_2
    iget-object v0, p1, Lo/aji;->bHs:Landroid/widget/TextView;

    const v1, 0x7f06002a

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    goto :goto_1

    .line 29
    :pswitch_3
    iget-object v0, p1, Lo/aji;->bHs:Landroid/widget/TextView;

    const v1, 0x7f060084

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    goto :goto_1

    .line 33
    :pswitch_4
    iget-object v0, p1, Lo/aji;->bHs:Landroid/widget/TextView;

    const v1, 0x7f060086

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    goto :goto_1

    .line 37
    :pswitch_5
    iget-object v0, p1, Lo/aji;->bHs:Landroid/widget/TextView;

    const v1, 0x7f060083

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    goto :goto_1

    .line 41
    :goto_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported user type!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
