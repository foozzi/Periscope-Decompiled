.class public Lo/alo;
.super Landroid/widget/FrameLayout;
.source ""

# interfaces
.implements Landroid/support/v4/view/ViewPager$aux;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final bMd:[Lo/aah;


# instance fields
.field private bHk:Landroid/widget/TextView;

.field private bHl:Landroid/widget/TextView;

.field private bIb:Z

.field private bIc:Lo/alv;

.field private bId:Lo/alv;

.field private final bMe:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Lo/aah;Landroid/support/v7/widget/RecyclerView;>;"
        }
    .end annotation
.end field

.field private bMf:Landroid/widget/TextView;

.field private bMg:Landroid/widget/TextView;

.field private bMh:Landroid/widget/TextView;

.field private bMi:Landroid/widget/ImageView;

.field private bMj:Lo/als;

.field private bMk:Lo/amb;

.field private bMl:Landroid/widget/ImageView;

.field private bMm:Landroid/app/Dialog;

.field private bMn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<Ljava/lang/String;>;"
        }
    .end annotation
.end field

.field private bMo:Landroid/widget/ListAdapter;

.field private bMp:Landroid/view/View;

.field private bMq:Landroid/view/View;

.field private bMr:Landroid/view/View;

.field private bMs:Landroid/support/v4/view/ViewPager;

.field private bMt:Landroid/view/View;

.field private bMu:Landroid/view/View;

.field private bMv:Z

.field private bMw:Lo/amq;

.field private bMx:Landroid/view/View;

.field private bMy:Ljava/lang/String;

.field private bsE:Ltv/periscope/android/api/PsUser;

.field private bzL:Landroid/view/View;

.field private bzX:Landroid/widget/TextView;

.field private γ:I

.field private ᘄ:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Lo/aah;

    sget-object v1, Lo/aah;->bsL:Lo/aah;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/aah;->bsM:Lo/aah;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lo/alo;->bMd:[Lo/aah;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 93
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/alo;->bMe:Ljava/util/Map;

    .line 94
    invoke-direct {p0, p1}, Lo/alo;->ˊ(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/alo;->bMe:Ljava/util/Map;

    .line 99
    invoke-direct {p0, p1}, Lo/alo;->ˊ(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 103
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lo/alo;->bMe:Ljava/util/Map;

    .line 104
    invoke-direct {p0, p1}, Lo/alo;->ˊ(Landroid/content/Context;)V

    .line 105
    return-void
.end method

.method private BC()V
    .locals 3

    .line 445
    sget-object v0, Lo/vi$if;->bmZ:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 446
    iget-boolean v0, p0, Lo/alo;->bMv:Z

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 447
    :goto_0
    iget-object v0, p0, Lo/alo;->bMj:Lo/als;

    iget-object v1, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    iget-object v1, v1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/als;->Ɨ(Ljava/lang/String;)V

    .line 448
    if-eqz v2, :cond_1

    .line 449
    invoke-direct {p0}, Lo/alo;->BE()V

    .line 451
    :cond_1
    return-void
.end method

.method private BD()V
    .locals 3

    .line 454
    sget-object v0, Lo/vi$if;->bmY:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 455
    iget-boolean v0, p0, Lo/alo;->bMv:Z

    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 456
    :goto_0
    iget-object v0, p0, Lo/alo;->bMj:Lo/als;

    iget-object v1, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    iget-object v1, v1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/als;->ſ(Ljava/lang/String;)V

    .line 457
    if-eqz v2, :cond_1

    .line 458
    invoke-direct {p0}, Lo/alo;->BE()V

    .line 460
    :cond_1
    return-void
.end method

.method private BE()V
    .locals 3

    .line 463
    iget-boolean v0, p0, Lo/alo;->bMv:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lo/alo;->bMv:Z

    .line 467
    iget-boolean v0, p0, Lo/alo;->bMv:Z

    if-eqz v0, :cond_1

    .line 468
    const/4 v1, 0x0

    .line 469
    const/16 v2, 0x8

    goto :goto_1

    .line 471
    :cond_1
    const/16 v1, 0x8

    .line 472
    const/4 v2, 0x0

    .line 474
    :goto_1
    iget-object v0, p0, Lo/alo;->bMi:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lo/alo;->bHk:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lo/alo;->bHl:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 477
    iget-object v0, p0, Lo/alo;->bMu:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lo/alo;->bMt:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    invoke-direct {p0, v0, v2}, Lo/alo;->ˊ(Ltv/periscope/android/api/PsUser;I)V

    .line 480
    iget-object v0, p0, Lo/alo;->bMx:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 481
    iget-object v0, p0, Lo/alo;->bMr:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 482
    iget-object v0, p0, Lo/alo;->bMw:Lo/amq;

    invoke-virtual {v0, v1}, Lo/amq;->setScrollVisibility(I)V

    .line 483
    return-void
.end method

.method private BF()V
    .locals 3

    .line 486
    iget-object v0, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lo/alo;->bMn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 488
    sget-object v0, Lo/vi$if;->bmU:Lo/vi$if;

    invoke-static {v0}, Lo/vi;->ˊ(Lo/vi$if;)V

    .line 489
    iget-object v0, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    iget-boolean v0, v0, Ltv/periscope/android/api/PsUser;->bpF:Z

    if-eqz v0, :cond_0

    .line 490
    iget-object v0, p0, Lo/alo;->bMn:Ljava/util/List;

    invoke-virtual {p0}, Lo/alo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600d3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lo/alo;->bMn:Ljava/util/List;

    invoke-virtual {p0}, Lo/alo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0600d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 496
    :goto_0
    iget-object v0, p0, Lo/alo;->bMm:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 498
    :cond_1
    return-void
.end method

.method private By()V
    .locals 6

    .line 189
    new-instance v3, Ljava/util/ArrayList;

    sget-object v0, Lo/alo;->bMd:[Lo/aah;

    array-length v0, v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 190
    const/4 v4, 0x0

    :goto_0
    sget-object v0, Lo/alo;->bMd:[Lo/aah;

    array-length v0, v0

    if-ge v4, v0, :cond_0

    .line 191
    invoke-virtual {p0}, Lo/alo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030043

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    move-object v5, v0

    .line 193
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lo/alo;->bMe:Ljava/util/Map;

    sget-object v1, Lo/alo;->bMd:[Lo/aah;

    aget-object v1, v1, v4

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 197
    :cond_0
    const v0, 0x7f0b00c5

    invoke-virtual {p0, v0}, Lo/alo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/amq;

    iput-object v0, p0, Lo/alo;->bMw:Lo/amq;

    .line 198
    iget-object v0, p0, Lo/alo;->bMw:Lo/amq;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lo/amq;->setScrollVisibility(I)V

    .line 200
    new-instance v4, Lo/aln;

    invoke-direct {v4}, Lo/aln;-><init>()V

    .line 201
    new-instance v0, Lo/amp;

    iget-object v1, p0, Lo/alo;->bMw:Lo/amq;

    invoke-direct {v0, v1}, Lo/amp;-><init>(Lo/amq;)V

    invoke-virtual {v4, v0}, Lo/aln;->ˊ(Landroid/support/v4/view/ViewPager$aux;)V

    .line 202
    invoke-virtual {v4, p0}, Lo/aln;->ˊ(Landroid/support/v4/view/ViewPager$aux;)V

    .line 204
    new-instance v5, Lo/alt;

    invoke-direct {v5, v3}, Lo/alt;-><init>(Ljava/util/List;)V

    .line 205
    const v0, 0x7f0b00ca

    invoke-virtual {p0, v0}, Lo/alo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lo/alo;->bMs:Landroid/support/v4/view/ViewPager;

    .line 206
    iget-object v0, p0, Lo/alo;->bMs:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v5}, Landroid/support/v4/view/ViewPager;->setAdapter(Lo/ﹲ;)V

    .line 207
    iget-object v0, p0, Lo/alo;->bMs:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$aux;)V

    .line 209
    const v0, 0x7f0b00ef

    invoke-virtual {p0, v0}, Lo/alo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/alo;->bMr:Landroid/view/View;

    .line 210
    return-void
.end method

.method private Bz()V
    .locals 4

    .line 213
    const v0, 0x7f0b005a

    invoke-virtual {p0, v0}, Lo/alo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/alo;->bMl:Landroid/widget/ImageView;

    .line 214
    iget-object v0, p0, Lo/alo;->bMl:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    invoke-virtual {p0}, Lo/alo;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/alo;->bMn:Ljava/util/List;

    .line 218
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lo/alo;->bMn:Ljava/util/List;

    const v2, 0x7f030036

    invoke-direct {v0, v3, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lo/alo;->bMo:Landroid/widget/ListAdapter;

    .line 219
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lo/alo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lo/alo;->bMo:Landroid/widget/ListAdapter;

    new-instance v2, Lo/alr;

    invoke-direct {v2, p0}, Lo/alr;-><init>(Lo/alo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lo/alo;->bMm:Landroid/app/Dialog;

    .line 233
    return-void
.end method

.method static synthetic ˊ(Lo/alo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 44
    iput-object p1, p0, Lo/alo;->bMy:Ljava/lang/String;

    return-object p1
.end method

.method private ˊ(Landroid/content/Context;)V
    .locals 7

    .line 108
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030042

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 109
    const v0, 0x7f0b00e8

    invoke-virtual {p0, v0}, Lo/alo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/alo;->bMq:Landroid/view/View;

    .line 110
    iget-object v0, p0, Lo/alo;->bMq:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f0b00ed

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/alo;->bMg:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f0b00ee

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/alo;->bMh:Landroid/widget/TextView;

    .line 114
    const v0, 0x7f0b00bf

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/alo;->bHl:Landroid/widget/TextView;

    .line 115
    const v0, 0x7f0b00b5

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/alo;->bzX:Landroid/widget/TextView;

    .line 116
    const v0, 0x7f0b00ad

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/alo;->bHk:Landroid/widget/TextView;

    .line 117
    const v0, 0x7f0b00ea

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/alo;->bMu:Landroid/view/View;

    .line 118
    const v0, 0x7f0b00eb

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lo/alo;->bMf:Landroid/widget/TextView;

    .line 119
    const v0, 0x7f0b0069

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lo/alo;->bMi:Landroid/widget/ImageView;

    .line 120
    const v0, 0x7f0b00a2

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/alo;->bzL:Landroid/view/View;

    .line 122
    const v0, 0x7f0b00f0

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/amb;

    iput-object v0, p0, Lo/alo;->bMk:Lo/amb;

    .line 123
    iget-object v0, p0, Lo/alo;->bMk:Lo/amb;

    invoke-virtual {v0, p0}, Lo/amb;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f0b00a7

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/alo;->bMt:Landroid/view/View;

    .line 125
    invoke-direct {p0}, Lo/alo;->Bz()V

    .line 127
    invoke-direct {p0}, Lo/alo;->By()V

    .line 129
    const v0, 0x7f0b00bc

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lo/alo;->bMx:Landroid/view/View;

    .line 130
    iget-object v0, p0, Lo/alo;->bMx:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    const v0, 0x7f0b00ec

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 133
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    const v0, 0x7f0b00dc

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 136
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    const v0, 0x7f0b00e9

    invoke-virtual {p0, v0}, Lo/alo;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 141
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    invoke-virtual {p0}, Lo/alo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/akn;->ᒢ(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, p0, Lo/alo;->γ:I

    .line 144
    iput-object v6, p0, Lo/alo;->bMp:Landroid/view/View;

    .line 146
    new-instance v0, Lo/alp;

    invoke-direct {v0, p0}, Lo/alp;-><init>(Lo/alo;)V

    iput-object v0, p0, Lo/alo;->bIc:Lo/alv;

    .line 160
    new-instance v0, Lo/alq;

    invoke-direct {v0, p0}, Lo/alq;-><init>(Lo/alo;)V

    iput-object v0, p0, Lo/alo;->bId:Lo/alv;

    .line 185
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lo/alo;->setVisibility(I)V

    .line 186
    return-void
.end method

.method private ˊ(Ltv/periscope/android/api/PsUser;I)V
    .locals 3

    .line 319
    if-eqz p1, :cond_0

    iget-object v2, p1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 320
    :goto_0
    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lo/alo;->ᴿ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 321
    :cond_1
    iget-object v0, p0, Lo/alo;->bMl:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 323
    :cond_2
    iget-object v0, p0, Lo/alo;->bMl:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 325
    :goto_1
    return-void
.end method

.method static synthetic ˊ(Lo/alo;)Z
    .locals 1

    .line 44
    iget-boolean v0, p0, Lo/alo;->bMv:Z

    return v0
.end method

.method static synthetic ˊ(Lo/alo;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lo/alo;->ᘄ:Z

    return p1
.end method

.method static synthetic ˋ(Lo/alo;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lo/alo;->BE()V

    return-void
.end method

.method static synthetic ˋ(Lo/alo;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lo/alo;->bIb:Z

    return p1
.end method

.method static synthetic ˎ(Lo/alo;)Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/alo;->bMy:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic ˏ(Lo/alo;)Ltv/periscope/android/api/PsUser;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    return-object v0
.end method

.method static synthetic ᐝ(Lo/alo;)Lo/als;
    .locals 1

    .line 44
    iget-object v0, p0, Lo/alo;->bMj:Lo/als;

    return-object v0
.end method

.method private ᴿ(Ljava/lang/String;)Z
    .locals 1

    .line 315
    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v0

    invoke-virtual {v0}, Lo/aad;->vx()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public Av()V
    .locals 4

    .line 389
    iget-object v0, p0, Lo/alo;->bMe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    .line 390
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->ᵇ()Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    check-cast v0, Lo/ajq;

    move-object v3, v0

    .line 391
    if-eqz v3, :cond_0

    .line 392
    invoke-virtual {v3}, Lo/ajq;->notifyDataSetChanged()V

    .line 394
    :cond_0
    goto :goto_0

    .line 395
    :cond_1
    return-void
.end method

.method public BA()V
    .locals 5

    .line 328
    iget-object v0, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    if-eqz v0, :cond_1

    .line 329
    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v0

    iget-object v1, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    iget-object v1, v1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/aad;->נּ(Ljava/lang/String;)Ltv/periscope/android/api/PsUser;

    move-result-object v0

    invoke-virtual {p0, v0}, Lo/alo;->ᐝ(Ltv/periscope/android/api/PsUser;)V

    .line 330
    iget-object v0, p0, Lo/alo;->bMe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    move-object v3, v0

    .line 331
    invoke-virtual {v3}, Landroid/support/v7/widget/RecyclerView;->ᵇ()Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    check-cast v0, Lo/ajq;

    move-object v4, v0

    .line 332
    if-eqz v4, :cond_0

    .line 333
    invoke-virtual {v4}, Lo/ajq;->notifyDataSetChanged()V

    .line 335
    :cond_0
    goto :goto_0

    .line 337
    :cond_1
    return-void
.end method

.method public BB()Ljava/lang/String;
    .locals 1

    .line 382
    iget-object v0, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    if-nez v0, :cond_0

    .line 383
    const/4 v0, 0x0

    return-object v0

    .line 385
    :cond_0
    iget-object v0, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    iget-object v0, v0, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    return-object v0
.end method

.method public clear()V
    .locals 4

    .line 239
    const/4 v0, 0x0

    iput-object v0, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    .line 240
    iget-object v0, p0, Lo/alo;->bMe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    move-object v2, v0

    .line 241
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->ᵇ()Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    check-cast v0, Lo/ajq;

    move-object v3, v0

    .line 242
    if-eqz v3, :cond_0

    .line 243
    const-string v0, "-1"

    invoke-virtual {v3, v0}, Lo/ajq;->ﯧ(Ljava/lang/String;)V

    .line 245
    invoke-virtual {v3}, Lo/ajq;->notifyDataSetChanged()V

    .line 247
    :cond_0
    goto :goto_0

    .line 248
    :cond_1
    return-void
.end method

.method public hide()V
    .locals 1

    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/alo;->ᵇ(Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 378
    iget-boolean v0, p0, Lo/alo;->bIb:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 399
    iget-object v0, p0, Lo/alo;->bMj:Lo/als;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    if-nez v0, :cond_1

    .line 400
    :cond_0
    return-void

    .line 402
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 404
    :sswitch_0
    invoke-virtual {p0}, Lo/alo;->hide()V

    .line 405
    goto/16 :goto_0

    .line 408
    :sswitch_1
    iget-object v0, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    iget-boolean v0, v0, Ltv/periscope/android/api/PsUser;->bpF:Z

    if-eqz v0, :cond_2

    .line 409
    iget-object v0, p0, Lo/alo;->bMj:Lo/als;

    iget-object v1, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    iget-object v1, v1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/als;->ﭤ(Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :cond_2
    iget-object v0, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    iget-boolean v0, v0, Ltv/periscope/android/api/PsUser;->bpE:Z

    if-eqz v0, :cond_3

    .line 411
    iget-object v0, p0, Lo/alo;->bMj:Lo/als;

    iget-object v1, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    iget-object v1, v1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/als;->ﭜ(Ljava/lang/String;)V

    goto :goto_0

    .line 413
    :cond_3
    iget-object v0, p0, Lo/alo;->bMj:Lo/als;

    iget-object v1, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    iget-object v1, v1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-interface {v0, v1}, Lo/als;->ﭕ(Ljava/lang/String;)V

    .line 415
    goto :goto_0

    .line 418
    :sswitch_2
    iget-object v0, p0, Lo/alo;->bMs:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 419
    iget-boolean v0, p0, Lo/alo;->bMv:Z

    if-nez v0, :cond_4

    .line 421
    invoke-direct {p0}, Lo/alo;->BD()V

    goto :goto_0

    .line 426
    :sswitch_3
    iget-object v0, p0, Lo/alo;->bMs:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 427
    iget-boolean v0, p0, Lo/alo;->bMv:Z

    if-nez v0, :cond_4

    .line 429
    invoke-direct {p0}, Lo/alo;->BC()V

    goto :goto_0

    .line 434
    :sswitch_4
    invoke-direct {p0}, Lo/alo;->BF()V

    .line 435
    goto :goto_0

    .line 438
    :sswitch_5
    invoke-direct {p0}, Lo/alo;->BE()V

    .line 442
    :cond_4
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b005a -> :sswitch_4
        0x7f0b00bc -> :sswitch_5
        0x7f0b00dc -> :sswitch_2
        0x7f0b00e8 -> :sswitch_0
        0x7f0b00ec -> :sswitch_3
        0x7f0b00f0 -> :sswitch_1
    .end sparse-switch
.end method

.method public setDelegate(Lo/als;)V
    .locals 8

    .line 251
    iput-object p1, p0, Lo/alo;->bMj:Lo/als;

    .line 252
    sget-object v2, Lo/alo;->bMd:[Lo/aah;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 253
    iget-object v0, p0, Lo/alo;->bMe:Ljava/util/Map;

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    move-object v6, v0

    .line 254
    new-instance v7, Lo/ajq;

    new-instance v0, Lo/aag;

    invoke-static {}, Lo/vf;->tI()Lo/aad;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/aag;-><init>(Lo/aad;)V

    invoke-direct {v7, v0, p1}, Lo/ajq;-><init>(Lo/aag;Lo/amw;)V

    .line 256
    invoke-virtual {v7, v5}, Lo/ajq;->ˊ(Lo/aah;)V

    .line 257
    invoke-virtual {v6, v7}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$if;)V

    .line 258
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lo/alo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$ʻ;)V

    .line 252
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 260
    :cond_0
    return-void
.end method

.method public show()V
    .locals 8

    .line 340
    iget-boolean v0, p0, Lo/alo;->ᘄ:Z

    if-eqz v0, :cond_0

    .line 341
    return-void

    .line 344
    :cond_0
    iget-object v0, p0, Lo/alo;->bMq:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 346
    iget-object v0, p0, Lo/alo;->bMp:Landroid/view/View;

    const-string v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lo/alo;->γ:I

    int-to-float v3, v3

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 347
    invoke-virtual {p0}, Lo/alo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/alk;->ᵌ(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 348
    iget-object v0, p0, Lo/alo;->bIc:Lo/alv;

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 350
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 351
    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 352
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 353
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method public ʹ(I)V
    .locals 0

    .line 525
    return-void
.end method

.method public ˊ(IFI)V
    .locals 0

    .line 503
    return-void
.end method

.method public ᐝ(Ltv/periscope/android/api/PsUser;)V
    .locals 9

    .line 263
    if-nez p1, :cond_0

    .line 264
    return-void

    .line 266
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/alo;->ˊ(Ltv/periscope/android/api/PsUser;I)V

    .line 268
    iget-object v0, p0, Lo/alo;->bzX:Landroid/widget/TextView;

    iget-object v1, p1, Ltv/periscope/android/api/PsUser;->bpy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v0, p0, Lo/alo;->bHk:Landroid/widget/TextView;

    invoke-virtual {p0}, Lo/alo;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Ltv/periscope/android/api/PsUser;->bpx:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f060105

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 270
    iget-object v0, p0, Lo/alo;->bMf:Landroid/widget/TextView;

    invoke-virtual {p0}, Lo/alo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Ltv/periscope/android/api/PsUser;->uk()I

    move-result v2

    int-to-long v2, v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object v0, p0, Lo/alo;->bHl:Landroid/widget/TextView;

    iget-object v1, p1, Ltv/periscope/android/api/PsUser;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    iget-object v0, p0, Lo/alo;->bMg:Landroid/widget/TextView;

    invoke-virtual {p0}, Lo/alo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Ltv/periscope/android/api/PsUser;->bpB:I

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lo/alo;->bMh:Landroid/widget/TextView;

    invoke-virtual {p0}, Lo/alo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p1, Ltv/periscope/android/api/PsUser;->bpC:I

    int-to-long v2, v2

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v4}, Lo/akn;->ˊ(Landroid/content/res/Resources;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-boolean v0, p1, Ltv/periscope/android/api/PsUser;->bpI:Z

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lo/alo;->bzL:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lo/alo;->bzL:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 282
    :goto_0
    iget-object v0, p1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-direct {p0, v0}, Lo/alo;->ᴿ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 283
    sget-object v5, Lo/amb$if;->bMO:Lo/amb$if;

    goto :goto_1

    .line 284
    :cond_2
    iget-boolean v0, p1, Ltv/periscope/android/api/PsUser;->bpF:Z

    if-eqz v0, :cond_3

    .line 285
    sget-object v5, Lo/amb$if;->bMN:Lo/amb$if;

    goto :goto_1

    .line 286
    :cond_3
    iget-boolean v0, p1, Ltv/periscope/android/api/PsUser;->bpE:Z

    if-eqz v0, :cond_4

    .line 287
    sget-object v5, Lo/amb$if;->bMM:Lo/amb$if;

    goto :goto_1

    .line 289
    :cond_4
    sget-object v5, Lo/amb$if;->bML:Lo/amb$if;

    .line 291
    :goto_1
    iget-object v0, p0, Lo/alo;->bMk:Lo/amb;

    invoke-virtual {v0, v5}, Lo/amb;->setState(Lo/amb$if;)V

    .line 293
    iget-object v0, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    invoke-virtual {v0}, Ltv/periscope/android/api/PsUser;->uj()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    invoke-virtual {v0}, Ltv/periscope/android/api/PsUser;->uj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ltv/periscope/android/api/PsUser;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 297
    :cond_5
    invoke-virtual {p0}, Lo/alo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/ᓲ;->ˌ(Landroid/content/Context;)Lo/ᕻ;

    move-result-object v0

    invoke-virtual {p1}, Ltv/periscope/android/api/PsUser;->uj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/ᕻ;->ʻ(Ljava/lang/String;)Lo/ઽ;

    move-result-object v0

    sget-object v1, Lo/abe;->bvo:Lo/ﮆ;

    invoke-virtual {v0, v1}, Lo/ઽ;->ˊ(Lo/ﮆ;)Lo/ڏ;

    move-result-object v0

    const v1, 0x7f090082

    invoke-virtual {v0, v1}, Lo/ڏ;->ﹷ(I)Lo/ڏ;

    move-result-object v0

    invoke-virtual {v0}, Lo/ڏ;->ץ()Lo/ڏ;

    move-result-object v0

    iget-object v1, p0, Lo/alo;->bMi:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lo/ڏ;->ˊ(Landroid/widget/ImageView;)Lo/ﭩ;

    .line 305
    :goto_2
    iput-object p1, p0, Lo/alo;->bsE:Ltv/periscope/android/api/PsUser;

    .line 306
    iget-object v0, p0, Lo/alo;->bMe:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    move-object v7, v0

    .line 307
    invoke-virtual {v7}, Landroid/support/v7/widget/RecyclerView;->ᵇ()Landroid/support/v7/widget/RecyclerView$if;

    move-result-object v0

    check-cast v0, Lo/ajq;

    move-object v8, v0

    .line 308
    if-eqz v8, :cond_6

    .line 309
    iget-object v0, p1, Ltv/periscope/android/api/PsUser;->id:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lo/ajq;->ﯧ(Ljava/lang/String;)V

    .line 311
    :cond_6
    goto :goto_3

    .line 312
    :cond_7
    return-void
.end method

.method public ᵇ(Ljava/lang/String;)V
    .locals 8

    .line 356
    iget-boolean v0, p0, Lo/alo;->ᘄ:Z

    if-eqz v0, :cond_0

    .line 357
    return-void

    .line 360
    :cond_0
    iput-object p1, p0, Lo/alo;->bMy:Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lo/alo;->bMq:Landroid/view/View;

    const-string v1, "alpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 364
    iget-object v0, p0, Lo/alo;->bMp:Landroid/view/View;

    const-string v1, "translationY"

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lo/alo;->γ:I

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 365
    invoke-virtual {p0}, Lo/alo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo/alk;->ᖮ(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 366
    iget-object v0, p0, Lo/alo;->bId:Lo/alv;

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 368
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 369
    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 370
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 371
    return-void

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x0
    .end array-data
.end method

.method public ﾞ(I)V
    .locals 0

    .line 507
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 509
    :sswitch_0
    invoke-direct {p0}, Lo/alo;->BC()V

    .line 510
    goto :goto_0

    .line 513
    :sswitch_1
    invoke-direct {p0}, Lo/alo;->BD()V

    .line 514
    .line 520
    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
    .end sparse-switch
.end method
