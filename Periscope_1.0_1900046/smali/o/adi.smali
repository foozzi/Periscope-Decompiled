.class public Lo/adi;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 70
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 71
    const v0, 0x7f04000a

    const v1, 0x7f04000f

    invoke-virtual {p0, v0, v1}, Lo/adi;->overridePendingTransition(II)V

    .line 72
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 32
    :pswitch_0
    sget-object v0, Lo/vi$if;->blz:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 34
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lo/adq;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 35
    const-string v0, "e_title"

    const v1, 0x7f06001f

    invoke-virtual {p0, v1}, Lo/adi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    const-string v0, "e_url"

    const v1, 0x7f060020

    invoke-virtual {p0, v1}, Lo/adi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    const v0, 0x7f04000d

    const v1, 0x7f04000b

    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lo/adi;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 39
    goto/16 :goto_0

    .line 42
    :pswitch_1
    sget-object v0, Lo/vi$if;->bly:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 44
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lo/adq;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    const-string v0, "e_title"

    const v1, 0x7f0600cd

    invoke-virtual {p0, v1}, Lo/adi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 46
    const-string v0, "e_url"

    const v1, 0x7f0600ce

    invoke-virtual {p0, v1}, Lo/adi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 47
    const v0, 0x7f04000d

    const v1, 0x7f04000b

    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lo/adi;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 49
    goto :goto_0

    .line 52
    :pswitch_2
    sget-object v0, Lo/vi$if;->blx:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 54
    new-instance v2, Landroid/content/Intent;

    const-class v0, Lo/adq;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 55
    const-string v0, "e_title"

    const v1, 0x7f0600f5

    invoke-virtual {p0, v1}, Lo/adi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 56
    const-string v0, "e_url"

    const v1, 0x7f0600f7

    invoke-virtual {p0, v1}, Lo/adi;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const v0, 0x7f04000d

    const v1, 0x7f04000b

    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lo/adi;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 59
    goto :goto_0

    .line 62
    :pswitch_3
    invoke-virtual {p0}, Lo/adi;->onBackPressed()V

    .line 66
    :goto_0
    :pswitch_4
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0b00bc
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f030039

    invoke-virtual {p0, v0}, Lo/adi;->setContentView(I)V

    .line 19
    const v0, 0x7f0b0090

    invoke-virtual {p0, v0}, Lo/adi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/amt;

    move-object v1, v0

    .line 20
    const v0, 0x7f06009a

    invoke-virtual {v1, v0}, Lo/amt;->setTitle(I)V

    .line 22
    const v0, 0x7f0b00c0

    invoke-virtual {p0, v0}, Lo/adi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    const v0, 0x7f0b00c1

    invoke-virtual {p0, v0}, Lo/adi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    const v0, 0x7f0b00c2

    invoke-virtual {p0, v0}, Lo/adi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const v0, 0x7f0b00bc

    invoke-virtual {p0, v0}, Lo/adi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    return-void
.end method
