.class public Lo/alh;
.super Landroid/widget/RelativeLayout;
.source ""


# instance fields
.field private bLK:Lo/alm;

.field private bLL:Lo/ami;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lo/alh;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lo/alh;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    invoke-virtual {p0, p1, p2, p3}, Lo/alh;->ˊ(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method


# virtual methods
.method public Bw()Landroid/widget/ImageView;
    .locals 1

    .line 78
    iget-object v0, p0, Lo/alh;->bLK:Lo/alm;

    return-object v0
.end method

.method public setIcon(II)V
    .locals 2

    .line 82
    if-lez p2, :cond_0

    .line 83
    iget-object v0, p0, Lo/alh;->bLK:Lo/alm;

    invoke-virtual {p0}, Lo/alh;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/alm;->setColorFilter(I)V

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lo/alh;->bLK:Lo/alm;

    invoke-virtual {v0}, Lo/alm;->clearColorFilter()V

    .line 87
    :goto_0
    if-lez p1, :cond_1

    .line 88
    iget-object v0, p0, Lo/alh;->bLK:Lo/alm;

    invoke-virtual {v0, p1}, Lo/alm;->setImageResource(I)V

    goto :goto_1

    .line 90
    :cond_1
    iget-object v0, p0, Lo/alh;->bLK:Lo/alm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/alm;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 92
    :goto_1
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;)V
    .locals 3

    .line 95
    iget-object v0, p0, Lo/alh;->bLL:Lo/ami;

    invoke-virtual {v0, p1}, Lo/ami;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lo/alh;->bLL:Lo/ami;

    invoke-virtual {p0}, Lo/alh;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09002b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/ami;->setTextColor(I)V

    .line 97
    return-void
.end method

.method public setLabel(Ljava/lang/CharSequence;I)V
    .locals 2

    .line 100
    iget-object v0, p0, Lo/alh;->bLL:Lo/ami;

    invoke-virtual {v0, p1}, Lo/ami;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v0, p0, Lo/alh;->bLL:Lo/ami;

    invoke-virtual {p0}, Lo/alh;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/ami;->setTextColor(I)V

    .line 102
    return-void
.end method

.method ˊ(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 37
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001a

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 38
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lo/alh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/alm;

    iput-object v0, p0, Lo/alh;->bLK:Lo/alm;

    .line 39
    const v0, 0x7f0b0059

    invoke-virtual {p0, v0}, Lo/alh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/ami;

    iput-object v0, p0, Lo/alh;->bLL:Lo/ami;

    .line 41
    sget-object v0, Lo/vh$if;->ActionSheetItem:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 43
    const/4 v4, 0x0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_0

    .line 44
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    .line 45
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_1

    .line 47
    :pswitch_0
    iget-object v0, p0, Lo/alh;->bLK:Lo/alm;

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/alm;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 48
    goto :goto_1

    .line 51
    :pswitch_1
    iget-object v0, p0, Lo/alh;->bLK:Lo/alm;

    const/4 v1, 0x0

    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lo/alm;->setColorFilter(I)V

    .line 52
    goto :goto_1

    .line 55
    :pswitch_2
    iget-object v0, p0, Lo/alh;->bLL:Lo/ami;

    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ami;->setText(Ljava/lang/CharSequence;)V

    .line 56
    goto :goto_1

    .line 59
    :pswitch_3
    iget-object v0, p0, Lo/alh;->bLL:Lo/ami;

    const/16 v1, 0x10

    invoke-virtual {v3, v6, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lo/ami;->setTextSize(IF)V

    .line 60
    goto :goto_1

    .line 64
    :pswitch_4
    :try_start_0
    invoke-virtual {v3, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 65
    invoke-static {p1, v7}, Lo/amm;->ͺ(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    .line 66
    iget-object v0, p0, Lo/alh;->bLL:Lo/ami;

    invoke-virtual {v0, v8}, Lo/ami;->setTypeface(Landroid/graphics/Typeface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    goto :goto_1

    .line 67
    :catch_0
    move-exception v7

    .line 43
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 74
    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 75
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
