.class public Lo/aef$ˊ;
.super Lo/aef;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aef;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02ca"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aef<Lo/aeh$\u02ca;>;Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private bsJ:Ljava/lang/String;

.field private final bzI:Landroid/widget/ImageView;

.field private final bzJ:Landroid/widget/TextView;

.field private final bzK:Landroid/widget/TextView;

.field private final bzL:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;Lo/ady;)V
    .locals 1

    .line 144
    invoke-direct {p0, p1, p2}, Lo/aef;-><init>(Landroid/view/View;Lo/ady;)V

    .line 145
    const v0, 0x7f0b00a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/aef$ˊ;->bzJ:Landroid/widget/TextView;

    .line 146
    const v0, 0x7f0b009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/aef$ˊ;->bzI:Landroid/widget/ImageView;

    .line 147
    const v0, 0x7f0b00a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/aef$ˊ;->bzK:Landroid/widget/TextView;

    .line 148
    const v0, 0x7f0b00a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/aef$ˊ;->bzL:Landroid/view/View;

    .line 149
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-void
.end method

.method public static ˋ(Landroid/content/Context;Landroid/view/ViewGroup;Lo/ady;)Lo/aef$ˊ;
    .locals 4

    .line 132
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 134
    new-instance v0, Lo/aef$ˊ;

    invoke-direct {v0, v3, p2}, Lo/aef$ˊ;-><init>(Landroid/view/View;Lo/ady;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 185
    iget-object v0, p0, Lo/aef$ˊ;->bzc:Lo/ady;

    iget-object v1, p0, Lo/aef$ˊ;->bsJ:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/ady;->ƚ(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public ˊ(Lo/aeh$ˊ;)V
    .locals 6

    .line 154
    invoke-virtual {p1}, Lo/aeh$ˊ;->xA()Lo/xh;

    move-result-object v3

    .line 155
    iget-object v0, v3, Lo/xh;->nD:Ljava/lang/String;

    iput-object v0, p0, Lo/aef$ˊ;->bsJ:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lo/aef$ˊ;->bzJ:Landroid/widget/TextView;

    iget-object v1, v3, Lo/xh;->boE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v0

    iget-object v1, v3, Lo/xh;->nD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/aad;->נּ(Ljava/lang/String;)Ltv/periscope/android/api/PsUser;

    move-result-object v4

    .line 159
    if-nez v4, :cond_0

    .line 160
    iget-object v0, p0, Lo/aef$ˊ;->bzK:Landroid/widget/TextView;

    const v1, 0x7f06003f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 161
    iget-object v0, p0, Lo/aef$ˊ;->bzL:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 163
    :cond_0
    iget-object v0, p0, Lo/aef$ˊ;->bzK:Landroid/widget/TextView;

    iget-object v1, v4, Ltv/periscope/android/api/PsUser;->bpx:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    iget-boolean v0, v4, Ltv/periscope/android/api/PsUser;->bpI:Z

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lo/aef$ˊ;->bzL:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 167
    :cond_1
    iget-object v0, p0, Lo/aef$ˊ;->bzL:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    :goto_0
    iget-object v0, p0, Lo/aef$ˊ;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 172
    iget-object v0, v3, Lo/xh;->Tk:Ljava/lang/String;

    invoke-static {v0}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    invoke-static {v5}, Lo/ᓲ;->ˌ(Landroid/content/Context;)Lo/ᕻ;

    move-result-object v0

    iget-object v1, v3, Lo/xh;->Tk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/ᕻ;->ʻ(Ljava/lang/String;)Lo/ઽ;

    move-result-object v0

    sget-object v1, Lo/abe;->bvo:Lo/ﮆ;

    invoke-virtual {v0, v1}, Lo/ઽ;->ˊ(Lo/ﮆ;)Lo/ڏ;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Lo/ڏ;->ﹷ(I)Lo/ڏ;

    move-result-object v0

    iget-object v1, p0, Lo/aef$ˊ;->bzI:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lo/ڏ;->ˊ(Landroid/widget/ImageView;)Lo/ﭩ;

    goto :goto_1

    .line 179
    :cond_2
    iget-object v0, p0, Lo/aef$ˊ;->bzI:Landroid/widget/ImageView;

    iget-object v1, v3, Lo/xh;->boE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/akl;->ˊ(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 181
    :goto_1
    return-void
.end method

.method public bridge synthetic ˊ(Lo/aeh;)V
    .locals 1

    .line 128
    move-object v0, p1

    check-cast v0, Lo/aeh$ˊ;

    invoke-virtual {p0, v0}, Lo/aef$ˊ;->ˊ(Lo/aeh$ˊ;)V

    return-void
.end method
