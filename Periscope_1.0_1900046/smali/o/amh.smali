.class public Lo/amh;
.super Landroid/widget/RelativeLayout;
.source ""

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/amh$if;
    }
.end annotation


# instance fields
.field private bNb:I

.field private bNc:I

.field private bNd:I

.field private bNe:Landroid/widget/TextView;

.field private bNf:Landroid/widget/Switch;

.field private bNg:Lo/amh$if;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0, p1, p2}, Lo/amh;->ˏ(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0, p1, p2}, Lo/amh;->ˏ(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method private ˏ(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 43
    const v0, 0x7f03004f

    invoke-static {p1, v0, p0}, Lo/amh;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    sget-object v0, Lo/vh$if;->PsSwitchPreference:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 47
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/amh;->bNb:I

    .line 48
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/amh;->bNc:I

    .line 49
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lo/amh;->bNd:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    goto :goto_0

    .line 51
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v4

    .line 53
    :goto_0
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 88
    iget-object v0, p0, Lo/amh;->bNf:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 73
    if-eqz p2, :cond_0

    .line 74
    iget-object v0, p0, Lo/amh;->bNe:Landroid/widget/TextView;

    iget v1, p0, Lo/amh;->bNc:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object v0, p0, Lo/amh;->bNe:Landroid/widget/TextView;

    iget v1, p0, Lo/amh;->bNd:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 78
    :goto_0
    iget-object v0, p0, Lo/amh;->bNg:Lo/amh$if;

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lo/amh;->bNg:Lo/amh$if;

    invoke-interface {v0, p0, p2}, Lo/amh$if;->ˊ(Lo/amh;Z)V

    .line 81
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 57
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 59
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lo/amh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 60
    iget v0, p0, Lo/amh;->bNb:I

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 61
    const v0, 0x7f0b00be

    invoke-virtual {p0, v0}, Lo/amh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/amh;->bNe:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lo/amh;->bNe:Landroid/widget/TextView;

    iget v1, p0, Lo/amh;->bNd:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 63
    const v0, 0x7f0b0103

    invoke-virtual {p0, v0}, Lo/amh;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lo/amh;->bNf:Landroid/widget/Switch;

    .line 64
    iget-object v0, p0, Lo/amh;->bNf:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 65
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 84
    iget-object v0, p0, Lo/amh;->bNf:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 85
    return-void
.end method

.method public setOnCheckedChangeListener(Lo/amh$if;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lo/amh;->bNg:Lo/amh$if;

    .line 69
    return-void
.end method
