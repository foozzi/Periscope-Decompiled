.class public Lo/aef$ᐝ;
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
    name = "\u141d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aef$ᐝ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/aef<Lo/aeh$\u02bc;>;Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field public bAa:Lo/anj;

.field private bAb:Lo/aef$ᐝ$if;

.field public final bzW:Landroid/widget/ImageView;

.field public final bzX:Landroid/widget/TextView;

.field public final bzY:Landroid/widget/TextView;

.field public final bzZ:Lo/aht;

.field public nD:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Lo/ady;)V
    .locals 1

    .line 295
    invoke-direct {p0, p1, p2}, Lo/aef;-><init>(Landroid/view/View;Lo/ady;)V

    .line 296
    const v0, 0x7f0b0069

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/aef$ᐝ;->bzW:Landroid/widget/ImageView;

    .line 297
    const v0, 0x7f0b006b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/aef$ᐝ;->bzX:Landroid/widget/TextView;

    .line 298
    const v0, 0x7f0b006c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/aef$ᐝ;->bzY:Landroid/widget/TextView;

    .line 299
    const v0, 0x7f0b006a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/aht;

    iput-object v0, p0, Lo/aef$ᐝ;->bzZ:Lo/aht;

    .line 300
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    new-instance v0, Lo/aef$ᐝ$if;

    invoke-direct {v0, p0}, Lo/aef$ᐝ$if;-><init>(Lo/aef$ᐝ;)V

    iput-object v0, p0, Lo/aef$ᐝ;->bAb:Lo/aef$ᐝ$if;

    .line 302
    return-void
.end method

.method public static ʼ(Landroid/content/Context;Landroid/view/ViewGroup;Lo/ady;)Lo/aef$ᐝ;
    .locals 4

    .line 281
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 283
    new-instance v0, Lo/aef$ᐝ;

    invoke-direct {v0, v3, p2}, Lo/aef$ᐝ;-><init>(Landroid/view/View;Lo/ady;)V

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 365
    iget-object v0, p0, Lo/aef$ᐝ;->bzc:Lo/ady;

    iget-object v1, p0, Lo/aef$ᐝ;->nD:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/ady;->ƚ(Ljava/lang/String;)V

    .line 366
    return-void
.end method

.method public ˊ(Lo/aeh$ʼ;)V
    .locals 11

    .line 306
    iget-object v0, p1, Lo/aeh$ʼ;->nD:Ljava/lang/String;

    iput-object v0, p0, Lo/aef$ᐝ;->nD:Ljava/lang/String;

    .line 308
    invoke-virtual {p1}, Lo/aeh$ʼ;->xG()Lo/aad;

    move-result-object v5

    .line 309
    iget-object v0, p1, Lo/aeh$ʼ;->nD:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lo/aad;->נּ(Ljava/lang/String;)Ltv/periscope/android/api/PsUser;

    move-result-object v6

    .line 310
    if-nez v6, :cond_0

    .line 311
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Viewer isn\'t in cache"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lo/ɬ;->ˋ(Ljava/lang/Throwable;)V

    .line 312
    iget-object v0, p0, Lo/aef$ᐝ;->bzX:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lo/aef$ᐝ;->bzX:Landroid/widget/TextView;

    iget-object v1, v6, Ltv/periscope/android/api/PsUser;->bpy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lo/aef$ᐝ;->bB:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 319
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 320
    iget-object v0, p1, Lo/aeh$ʼ;->bnh:Ljava/lang/String;

    iget-object v1, p0, Lo/aef$ᐝ;->nD:Ljava/lang/String;

    iget-boolean v2, p1, Lo/aeh$ʼ;->bug:Z

    invoke-virtual {v5, v0, v1, v2}, Lo/aad;->ˊ(Ljava/lang/String;Ljava/lang/String;Z)Lo/anj;

    move-result-object v9

    .line 321
    iput-object v9, p0, Lo/aef$ᐝ;->bAa:Lo/anj;

    .line 322
    if-eqz v9, :cond_4

    .line 323
    iget v0, v9, Lo/anj;->bnl:I

    invoke-static {v8, v0}, Lo/akl;->ˋ(Landroid/content/res/Resources;I)I

    move-result v10

    .line 325
    iget-object v0, p0, Lo/aef$ᐝ;->bzW:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 326
    iget-object v0, p0, Lo/aef$ᐝ;->bzW:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 328
    :cond_1
    iget-boolean v0, p1, Lo/aeh$ʼ;->bug:Z

    if-nez v0, :cond_2

    .line 329
    iget-object v0, p0, Lo/aef$ᐝ;->bzW:Landroid/widget/ImageView;

    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 331
    :cond_2
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lo/akl;->ˋ(Landroid/content/res/Resources;I)I

    move-result v10

    .line 332
    iget-object v0, p0, Lo/aef$ᐝ;->bzW:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 334
    :goto_0
    iget v0, v9, Lo/anj;->bpH:I

    if-lez v0, :cond_3

    .line 335
    iget-object v0, p0, Lo/aef$ᐝ;->bzY:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    iget-object v0, p0, Lo/aef$ᐝ;->bzY:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, v9, Lo/anj;->bpH:I

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {v8, v2, v3, v4}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0600be

    invoke-virtual {v8, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v0, p0, Lo/aef$ᐝ;->bzZ:Lo/aht;

    const v1, 0x7f0200a0

    const v2, 0x7f02009f

    invoke-virtual {v0, v10, v1, v2}, Lo/aht;->setColorAndDrawables(III)V

    .line 340
    iget-object v0, p0, Lo/aef$ᐝ;->bzZ:Lo/aht;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/aht;->setVisibility(I)V

    goto :goto_1

    .line 342
    :cond_3
    iget-object v0, p0, Lo/aef$ᐝ;->bzZ:Lo/aht;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/aht;->setVisibility(I)V

    .line 343
    iget-object v0, p0, Lo/aef$ᐝ;->bzY:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 345
    :goto_1
    goto :goto_2

    .line 346
    :cond_4
    iget-object v0, p0, Lo/aef$ᐝ;->bzY:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    :goto_2
    invoke-virtual {v6}, Ltv/periscope/android/api/PsUser;->uj()Ljava/lang/String;

    move-result-object v10

    .line 350
    invoke-static {v10}, Lo/anw;->ᐨ(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 351
    invoke-static {v7}, Lo/ᓲ;->ˌ(Landroid/content/Context;)Lo/ᕻ;

    move-result-object v0

    invoke-virtual {v0, v10}, Lo/ᕻ;->ʻ(Ljava/lang/String;)Lo/ઽ;

    move-result-object v0

    sget-object v1, Lo/abe;->bvo:Lo/ﮆ;

    invoke-virtual {v0, v1}, Lo/ઽ;->ˊ(Lo/ﮆ;)Lo/ڏ;

    move-result-object v0

    const v1, 0x7f02003f

    invoke-virtual {v0, v1}, Lo/ڏ;->ﹷ(I)Lo/ڏ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ڏ;->ץ()Lo/ڏ;

    move-result-object v0

    iget-object v1, p0, Lo/aef$ᐝ;->bAb:Lo/aef$ᐝ$if;

    invoke-virtual {v0, v1}, Lo/ڏ;->ˊ(Lo/ﭩ;)Lo/ﭩ;

    goto :goto_3

    .line 358
    :cond_5
    iget-object v0, p0, Lo/aef$ᐝ;->bzW:Landroid/widget/ImageView;

    iget-object v1, v6, Ltv/periscope/android/api/PsUser;->bpy:Ljava/lang/String;

    invoke-virtual {v6}, Ltv/periscope/android/api/PsUser;->ul()I

    move-result v2

    invoke-static {v0, v1, v2}, Lo/akl;->ˊ(Landroid/widget/ImageView;Ljava/lang/String;I)V

    .line 361
    :goto_3
    return-void
.end method

.method public bridge synthetic ˊ(Lo/aeh;)V
    .locals 1

    .line 277
    move-object v0, p1

    check-cast v0, Lo/aeh$ʼ;

    invoke-virtual {p0, v0}, Lo/aef$ᐝ;->ˊ(Lo/aeh$ʼ;)V

    return-void
.end method
