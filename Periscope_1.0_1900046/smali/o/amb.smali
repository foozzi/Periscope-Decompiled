.class public Lo/amb;
.super Lo/alw;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/amb$1;,
        Lo/amb$if;
    }
.end annotation


# instance fields
.field private bME:Landroid/graphics/drawable/Drawable;

.field private bMF:Landroid/graphics/drawable/Drawable;

.field private bMG:Landroid/graphics/drawable/Drawable;

.field private bMH:I

.field private bMI:I

.field private bMJ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lo/alw;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lo/amb;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lo/alw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lo/amb;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lo/alw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lo/amb;->init()V

    .line 40
    return-void
.end method

.method private init()V
    .locals 2

    .line 43
    invoke-virtual {p0}, Lo/amb;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 44
    const v0, 0x7f020045

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/amb;->bME:Landroid/graphics/drawable/Drawable;

    .line 45
    const v0, 0x7f090046

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lo/amb;->bMH:I

    .line 47
    const v0, 0x7f020044

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/amb;->bMF:Landroid/graphics/drawable/Drawable;

    .line 48
    const v0, 0x7f090082

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lo/amb;->bMI:I

    .line 50
    const v0, 0x7f020046

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lo/amb;->bMG:Landroid/graphics/drawable/Drawable;

    .line 51
    const v0, 0x7f090082

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lo/amb;->bMJ:I

    .line 53
    sget-object v0, Lo/amb$if;->bML:Lo/amb$if;

    invoke-virtual {p0, v0}, Lo/amb;->setState(Lo/amb$if;)V

    .line 54
    return-void
.end method


# virtual methods
.method public setState(Lo/amb$if;)V
    .locals 2

    .line 57
    sget-object v0, Lo/amb$1;->bMK:[I

    invoke-virtual {p1}, Lo/amb$if;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 59
    :pswitch_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/amb;->setVisibility(I)V

    .line 60
    invoke-virtual {p0}, Lo/amb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/amb;->setText(Ljava/lang/CharSequence;)V

    .line 61
    iget v0, p0, Lo/amb;->bMI:I

    invoke-virtual {p0, v0}, Lo/amb;->setTextColor(I)V

    .line 62
    iget-object v0, p0, Lo/amb;->bMF:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lo/amb;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 63
    goto :goto_1

    .line 66
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/amb;->setVisibility(I)V

    .line 67
    invoke-virtual {p0}, Lo/amb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/amb;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget v0, p0, Lo/amb;->bMJ:I

    invoke-virtual {p0, v0}, Lo/amb;->setTextColor(I)V

    .line 69
    iget-object v0, p0, Lo/amb;->bMG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lo/amb;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 70
    goto :goto_1

    .line 73
    :pswitch_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lo/amb;->setVisibility(I)V

    .line 74
    goto :goto_1

    .line 78
    :goto_0
    :pswitch_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/amb;->setVisibility(I)V

    .line 79
    invoke-virtual {p0}, Lo/amb;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060044

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/amb;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget v0, p0, Lo/amb;->bMH:I

    invoke-virtual {p0, v0}, Lo/amb;->setTextColor(I)V

    .line 81
    iget-object v0, p0, Lo/amb;->bME:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lo/amb;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 85
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
