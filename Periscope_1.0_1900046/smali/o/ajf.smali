.class public abstract Lo/ajf;
.super Lo/ado;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ajf$1;
    }
.end annotation


# static fields
.field private static bHh:J


# instance fields
.field private bHi:Landroid/widget/ImageView;

.field private bHj:Landroid/widget/TextView;

.field private bHk:Landroid/widget/TextView;

.field private bHl:Landroid/widget/TextView;

.field private bHm:Landroid/widget/TextView;

.field private bHn:Landroid/widget/TextView;

.field private bHo:Landroid/widget/TextView;

.field private bHp:Landroid/widget/TextView;

.field private final bHq:Landroid/content/DialogInterface$OnClickListener;

.field private bnA:Lo/aad;

.field private bzW:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 44
    const-wide/16 v0, 0x0

    sput-wide v0, Lo/ajf;->bHh:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lo/ado;-><init>()V

    .line 55
    new-instance v0, Lo/ajg;

    invoke-direct {v0, p0}, Lo/ajg;-><init>(Lo/ajf;)V

    iput-object v0, p0, Lo/ajf;->bHq:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private Ad()V
    .locals 5

    .line 171
    invoke-virtual {p0}, Lo/ajf;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 172
    iget-object v0, p0, Lo/ajf;->bHm:Landroid/widget/TextView;

    iget-object v1, p0, Lo/ajf;->bnA:Lo/aad;

    invoke-virtual {v1}, Lo/aad;->vr()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-static {v4, v1, v2, v3}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object v0, p0, Lo/ajf;->bHn:Landroid/widget/TextView;

    iget-object v1, p0, Lo/ajf;->bnA:Lo/aad;

    invoke-virtual {v1}, Lo/aad;->vs()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x1

    invoke-static {v4, v1, v2, v3}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-object v0, p0, Lo/ajf;->bHp:Landroid/widget/TextView;

    iget-object v1, p0, Lo/ajf;->bnA:Lo/aad;

    invoke-virtual {v1}, Lo/aad;->vt()I

    move-result v1

    int-to-long v1, v1

    const/4 v3, 0x0

    invoke-static {v4, v1, v2, v3}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    invoke-direct {p0}, Lo/ajf;->Ae()V

    .line 176
    return-void
.end method

.method private Ae()V
    .locals 5

    .line 179
    iget-object v0, p0, Lo/ajf;->bHo:Landroid/widget/TextView;

    invoke-virtual {p0}, Lo/ajf;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lo/ajf;->bnA:Lo/aad;

    invoke-virtual {v2}, Lo/aad;->vv()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    return-void
.end method

.method private Af()V
    .locals 3

    .line 243
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lo/adp;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7f04000d

    const v2, 0x7f04000b

    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/ajf;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 246
    return-void
.end method

.method private Ag()V
    .locals 3

    .line 249
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lo/adh;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7f04000d

    const v2, 0x7f04000b

    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/ajf;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 252
    return-void
.end method

.method private Ah()V
    .locals 3

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lo/adi;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x7f04000d

    const v2, 0x7f04000b

    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/ajf;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 258
    return-void
.end method

.method private Ai()Z
    .locals 4

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sget-wide v2, Lo/ajf;->bHh:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logout()V
    .locals 4

    .line 261
    const-wide/16 v0, 0x0

    sput-wide v0, Lo/ajf;->bHh:J

    .line 263
    invoke-static {p0}, Lo/vn;->ᵋ(Landroid/content/Context;)Lo/vn;

    move-result-object v0

    sget-object v1, Lo/aaj;->btK:Lo/aaj;

    invoke-virtual {v0, v1}, Lo/vn;->ˊ(Lo/aaj;)V

    .line 264
    new-instance v2, Landroid/content/Intent;

    const-class v0, Ltv/periscope/android/LaunchActivity;

    invoke-direct {v2, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 265
    const v0, 0x4008000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0, v2}, Lo/ajf;->startActivity(Landroid/content/Intent;)V

    .line 268
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 269
    const-string v0, "action_logout"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v3}, Lo/ajf;->setResult(ILandroid/content/Intent;)V

    .line 271
    invoke-virtual {p0}, Lo/ajf;->finish()V

    .line 272
    return-void
.end method

.method static synthetic ˊ(Lo/ajf;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lo/ajf;->logout()V

    return-void
.end method

.method private ˋ(Lo/aah;)V
    .locals 3

    .line 236
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lo/ake;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "e_user_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f04000d

    const v2, 0x7f04000b

    invoke-static {p0, v1, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/ajf;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 240
    return-void
.end method


# virtual methods
.method public Ac()V
    .locals 6

    .line 147
    iget-object v4, p0, Lo/ajf;->bnA:Lo/aad;

    .line 148
    invoke-static {p0}, Lo/ᓲ;->ᐝ(Landroid/app/Activity;)Lo/ᕻ;

    move-result-object v0

    invoke-virtual {v4}, Lo/aad;->vo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ᕻ;->ʻ(Ljava/lang/String;)Lo/ઽ;

    move-result-object v0

    iget-object v1, p0, Lo/ajf;->bzW:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lo/ઽ;->ˊ(Landroid/widget/ImageView;)Lo/ﭩ;

    .line 152
    invoke-static {p0}, Lo/ᓲ;->ᐝ(Landroid/app/Activity;)Lo/ᕻ;

    move-result-object v0

    invoke-virtual {v4}, Lo/aad;->vo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ᕻ;->ʻ(Ljava/lang/String;)Lo/ઽ;

    move-result-object v0

    iget-object v1, p0, Lo/ajf;->bHi:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lo/ઽ;->ˊ(Landroid/widget/ImageView;)Lo/ﭩ;

    .line 156
    iget-object v0, p0, Lo/ajf;->bHj:Landroid/widget/TextView;

    invoke-virtual {v4}, Lo/aad;->vp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v0, p0, Lo/ajf;->bHk:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v4}, Lo/aad;->vq()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f060105

    invoke-virtual {p0, v2, v1}, Lo/ajf;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v4}, Lo/aad;->vw()Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-static {v5}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lo/ajf;->bHl:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lo/ajf;->bHl:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lo/ajf;->bHl:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 167
    :goto_0
    invoke-direct {p0}, Lo/ajf;->Ad()V

    .line 168
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 184
    invoke-super {p0}, Lo/ado;->onBackPressed()V

    .line 185
    const v0, 0x7f04000a

    const v1, 0x7f04000f

    invoke-virtual {p0, v0, v1}, Lo/ajf;->overridePendingTransition(II)V

    .line 186
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 190
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 192
    :sswitch_0
    invoke-virtual {p0}, Lo/ajf;->onBackPressed()V

    .line 193
    goto :goto_0

    .line 196
    :sswitch_1
    sget-object v0, Lo/vi$if;->blu:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 197
    sget-object v0, Lo/aah;->bsL:Lo/aah;

    invoke-direct {p0, v0}, Lo/ajf;->ˋ(Lo/aah;)V

    .line 198
    goto :goto_0

    .line 201
    :sswitch_2
    sget-object v0, Lo/vi$if;->blv:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 202
    sget-object v0, Lo/aah;->bsM:Lo/aah;

    invoke-direct {p0, v0}, Lo/ajf;->ˋ(Lo/aah;)V

    .line 203
    goto :goto_0

    .line 206
    :sswitch_3
    sget-object v0, Lo/vi$if;->blw:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 207
    sget-object v0, Lo/aah;->bsN:Lo/aah;

    invoke-direct {p0, v0}, Lo/ajf;->ˋ(Lo/aah;)V

    .line 208
    goto :goto_0

    .line 211
    :sswitch_4
    invoke-direct {p0}, Lo/ajf;->Af()V

    .line 212
    goto :goto_0

    .line 215
    :sswitch_5
    sget-object v0, Lo/vi$if;->blA:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 216
    invoke-direct {p0}, Lo/ajf;->Ag()V

    .line 217
    goto :goto_0

    .line 220
    :sswitch_6
    sget-object v0, Lo/vi$if;->blB:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 221
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f06007c

    invoke-virtual {p0, v1}, Lo/ajf;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060077

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lo/ajf;->bHq:Landroid/content/DialogInterface$OnClickListener;

    const v2, 0x7f060079

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 226
    goto :goto_0

    .line 229
    :sswitch_7
    invoke-direct {p0}, Lo/ajf;->Ah()V

    .line 233
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b00bc -> :sswitch_0
        0x7f0b00da -> :sswitch_1
        0x7f0b00dc -> :sswitch_2
        0x7f0b00de -> :sswitch_3
        0x7f0b00e0 -> :sswitch_4
        0x7f0b00e2 -> :sswitch_5
        0x7f0b00e4 -> :sswitch_7
        0x7f0b00e5 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 68
    invoke-super {p0, p1}, Lo/ado;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lo/ajf;->setContentView(I)V

    .line 72
    const v0, 0x7f0b0069

    invoke-virtual {p0, v0}, Lo/ajf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/ajf;->bzW:Landroid/widget/ImageView;

    .line 73
    const v0, 0x7f0b00d6

    invoke-virtual {p0, v0}, Lo/ajf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/ajf;->bHi:Landroid/widget/ImageView;

    .line 74
    const v0, 0x7f0b00d8

    invoke-virtual {p0, v0}, Lo/ajf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ajf;->bHj:Landroid/widget/TextView;

    .line 75
    const v0, 0x7f0b00ad

    invoke-virtual {p0, v0}, Lo/ajf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ajf;->bHk:Landroid/widget/TextView;

    .line 76
    const v0, 0x7f0b00bf

    invoke-virtual {p0, v0}, Lo/ajf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ajf;->bHl:Landroid/widget/TextView;

    .line 77
    const v0, 0x7f0b00dd

    invoke-virtual {p0, v0}, Lo/ajf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ajf;->bHm:Landroid/widget/TextView;

    .line 78
    const v0, 0x7f0b00db

    invoke-virtual {p0, v0}, Lo/ajf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ajf;->bHn:Landroid/widget/TextView;

    .line 79
    const v0, 0x7f0b00df

    invoke-virtual {p0, v0}, Lo/ajf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ajf;->bHo:Landroid/widget/TextView;

    .line 80
    const v0, 0x7f0b00d9

    invoke-virtual {p0, v0}, Lo/ajf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/ajf;->bHp:Landroid/widget/TextView;

    .line 82
    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v0

    iput-object v0, p0, Lo/ajf;->bnA:Lo/aad;

    .line 84
    const v0, 0x7f0b00e5

    invoke-virtual {p0, v0}, Lo/ajf;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 85
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f0b00da

    invoke-virtual {p0, v0}, Lo/ajf;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 88
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v0, 0x7f0b00dc

    invoke-virtual {p0, v0}, Lo/ajf;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 91
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 93
    const v0, 0x7f0b00e0

    invoke-virtual {p0, v0}, Lo/ajf;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 94
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    const v0, 0x7f0b00e2

    invoke-virtual {p0, v0}, Lo/ajf;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 97
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    const v0, 0x7f0b00de

    invoke-virtual {p0, v0}, Lo/ajf;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 100
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    const v0, 0x7f0b00bc

    invoke-virtual {p0, v0}, Lo/ajf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    const v0, 0x7f0b00e4

    invoke-virtual {p0, v0}, Lo/ajf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    const v0, 0x7f0b00e6

    invoke-virtual {p0, v0}, Lo/ajf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v8, v0

    .line 113
    const/16 v0, 0x8

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    const v0, 0x7f0b00e3

    invoke-virtual {p0, v0}, Lo/ajf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v9, v0

    .line 117
    iget-object v0, p0, Lo/ajf;->bnA:Lo/aad;

    invoke-static {v0}, Lo/ze;->ˊ(Lo/aad;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const/4 v0, 0x0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 119
    invoke-virtual {v9, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 121
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 124
    :goto_0
    const v0, 0x7f0b00e1

    invoke-virtual {p0, v0}, Lo/ajf;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    move-object v10, v0

    .line 125
    invoke-virtual {p0}, Lo/ajf;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 127
    invoke-virtual {p0}, Lo/ajf;->Ac()V

    .line 128
    return-void
.end method

.method public onEventMainThread(Lo/aak;)V
    .locals 2

    .line 276
    sget-object v0, Lo/ajf$1;->brV:[I

    invoke-virtual {p1}, Lo/aak;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 278
    :sswitch_0
    invoke-virtual {p0}, Lo/ajf;->Ac()V

    .line 279
    goto :goto_0

    .line 282
    :sswitch_1
    invoke-direct {p0}, Lo/ajf;->Ae()V

    .line 283
    .line 289
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onResume()V
    .locals 3

    .line 132
    invoke-super {p0}, Lo/ado;->onResume()V

    .line 134
    invoke-direct {p0}, Lo/ajf;->Ai()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lo/ajf;->wZ()Lo/vn;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Lo/vn;->tS()Ljava/lang/String;

    .line 137
    invoke-virtual {v2}, Lo/vn;->tV()Ljava/lang/String;

    .line 138
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lo/ajf;->bHh:J

    .line 139
    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0}, Lo/ajf;->Ad()V

    .line 144
    :goto_0
    return-void
.end method
