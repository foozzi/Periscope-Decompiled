.class public Lo/ajd;
.super Landroid/app/Activity;
.source ""

# interfaces
.implements Landroid/support/v4/view/ViewPager$aux;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final bHa:[I

.field private static final bHb:[I

.field private static final bHc:I


# instance fields
.field private bHd:Lo/all;

.field private bHe:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lo/ajd;->bHa:[I

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lo/ajd;->bHb:[I

    .line 28
    sget-object v0, Lo/ajd;->bHa:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lo/ajd;->bHc:I

    return-void

    :array_0
    .array-data 4
        0x7f02003b
        0x7f02003c
        0x7f02003d
        0x7f02003e
    .end array-data

    :array_1
    .array-data 4
        0x7f060107
        0x7f060108
        0x7f060109
        0x7f06010a
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private Ab()V
    .locals 2

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lo/aiz;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lo/ajd;->startActivity(Landroid/content/Intent;)V

    .line 73
    invoke-virtual {p0}, Lo/ajd;->finish()V

    .line 74
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 56
    :sswitch_0
    sget-object v0, Lo/vi$if;->blO:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 57
    invoke-direct {p0}, Lo/ajd;->Ab()V

    .line 58
    goto :goto_0

    .line 61
    :sswitch_1
    sget-object v0, Lo/vi$if;->blP:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 62
    invoke-direct {p0}, Lo/ajd;->Ab()V

    .line 63
    .line 69
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0b00d1 -> :sswitch_0
        0x7f0b011b -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f030059

    invoke-virtual {p0, v0}, Lo/ajd;->setContentView(I)V

    .line 39
    const v0, 0x7f0b00d1

    invoke-virtual {p0, v0}, Lo/ajd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    const v0, 0x7f0b011a

    invoke-virtual {p0, v0}, Lo/ajd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/all;

    iput-object v0, p0, Lo/ajd;->bHd:Lo/all;

    .line 41
    iget-object v0, p0, Lo/ajd;->bHd:Lo/all;

    invoke-virtual {v0, p0}, Lo/all;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$aux;)V

    .line 42
    const v0, 0x7f0b011b

    invoke-virtual {p0, v0}, Lo/ajd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/ajd;->bHe:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lo/ajd;->bHe:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    new-instance v2, Lo/aje;

    sget-object v0, Lo/ajd;->bHa:[I

    sget-object v1, Lo/ajd;->bHb:[I

    invoke-direct {v2, p0, v0, v1}, Lo/aje;-><init>(Landroid/content/Context;[I[I)V

    .line 47
    const v0, 0x7f0b00ca

    invoke-virtual {p0, v0}, Lo/ajd;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    move-object v3, v0

    .line 48
    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPager;->setAdapter(Lo/ﹲ;)V

    .line 49
    iget-object v0, p0, Lo/ajd;->bHd:Lo/all;

    invoke-virtual {v3, v0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$aux;)V

    .line 50
    return-void
.end method

.method public ʹ(I)V
    .locals 0

    .line 95
    return-void
.end method

.method public ˊ(IFI)V
    .locals 0

    .line 79
    return-void
.end method

.method public ﾞ(I)V
    .locals 2

    .line 83
    sget v0, Lo/ajd;->bHc:I

    if-ne p1, v0, :cond_0

    .line 84
    iget-object v0, p0, Lo/ajd;->bHe:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    iget-object v0, p0, Lo/ajd;->bHd:Lo/all;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/all;->setVisibility(I)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lo/ajd;->bHe:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lo/ajd;->bHd:Lo/all;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/all;->setVisibility(I)V

    .line 90
    :goto_0
    return-void
.end method
