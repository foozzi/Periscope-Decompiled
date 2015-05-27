.class public Lo/ৰ;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ৰ$if;
    }
.end annotation


# static fields
.field private static final Br:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<Lo/\u09f0$if;>;"
        }
    .end annotation
.end field

.field private static final Bs:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<Lo/\u09f0$if;>;"
        }
    .end annotation
.end field


# instance fields
.field private final Bt:I

.field private final Bu:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<Lo/\u09f0$if;>;"
        }
    .end annotation
.end field

.field private final Bv:[Lo/ৰ$if;

.field private Bw:I

.field private Bx:I

.field private By:I

.field private Bz:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Lo/ค;

    invoke-direct {v0}, Lo/ค;-><init>()V

    sput-object v0, Lo/ৰ;->Br:Ljava/util/Comparator;

    .line 44
    new-instance v0, Lo/ฅ;

    invoke-direct {v0}, Lo/ฅ;-><init>()V

    sput-object v0, Lo/ৰ;->Bs:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Lo/ৰ;->Bt:I

    .line 69
    const/4 v0, 0x5

    new-array v0, v0, [Lo/ৰ$if;

    iput-object v0, p0, Lo/ৰ;->Bv:[Lo/ৰ$if;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/ৰ;->Bu:Ljava/util/ArrayList;

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lo/ৰ;->Bw:I

    .line 72
    return-void
.end method

.method private ӭ()V
    .locals 2

    .line 133
    iget v0, p0, Lo/ৰ;->Bw:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 134
    iget-object v0, p0, Lo/ৰ;->Bu:Ljava/util/ArrayList;

    sget-object v1, Lo/ৰ;->Br:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 135
    const/4 v0, 0x1

    iput v0, p0, Lo/ৰ;->Bw:I

    .line 137
    :cond_0
    return-void
.end method

.method private ӱ()V
    .locals 2

    .line 143
    iget v0, p0, Lo/ৰ;->Bw:I

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lo/ৰ;->Bu:Ljava/util/ArrayList;

    sget-object v1, Lo/ৰ;->Bs:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lo/ৰ;->Bw:I

    .line 147
    :cond_0
    return-void
.end method


# virtual methods
.method public ˎ(IF)V
    .locals 6

    .line 82
    invoke-direct {p0}, Lo/ৰ;->ӭ()V

    .line 84
    iget v0, p0, Lo/ৰ;->Bz:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lo/ৰ;->Bv:[Lo/ৰ$if;

    iget v1, p0, Lo/ৰ;->Bz:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lo/ৰ;->Bz:I

    aget-object v3, v0, v1

    goto :goto_0

    :cond_0
    new-instance v3, Lo/ৰ$if;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lo/ৰ$if;-><init>(Lo/ค;)V

    .line 86
    :goto_0
    iget v0, p0, Lo/ৰ;->Bx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lo/ৰ;->Bx:I

    iput v0, v3, Lo/ৰ$if;->index:I

    .line 87
    iput p1, v3, Lo/ৰ$if;->weight:I

    .line 88
    iput p2, v3, Lo/ৰ$if;->value:F

    .line 89
    iget-object v0, p0, Lo/ৰ;->Bu:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget v0, p0, Lo/ৰ;->By:I

    add-int/2addr v0, p1

    iput v0, p0, Lo/ৰ;->By:I

    .line 92
    :goto_1
    iget v0, p0, Lo/ৰ;->By:I

    iget v1, p0, Lo/ৰ;->Bt:I

    if-le v0, v1, :cond_3

    .line 93
    iget v0, p0, Lo/ৰ;->By:I

    iget v1, p0, Lo/ৰ;->Bt:I

    sub-int v4, v0, v1

    .line 94
    iget-object v0, p0, Lo/ৰ;->Bu:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ৰ$if;

    move-object v5, v0

    .line 95
    iget v0, v5, Lo/ৰ$if;->weight:I

    if-gt v0, v4, :cond_1

    .line 96
    iget v0, p0, Lo/ৰ;->By:I

    iget v1, v5, Lo/ৰ$if;->weight:I

    sub-int/2addr v0, v1

    iput v0, p0, Lo/ৰ;->By:I

    .line 97
    iget-object v0, p0, Lo/ৰ;->Bu:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 98
    iget v0, p0, Lo/ৰ;->Bz:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 99
    iget-object v0, p0, Lo/ৰ;->Bv:[Lo/ৰ$if;

    iget v1, p0, Lo/ৰ;->Bz:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lo/ৰ;->Bz:I

    aput-object v5, v0, v1

    goto :goto_2

    .line 102
    :cond_1
    iget v0, v5, Lo/ৰ$if;->weight:I

    sub-int/2addr v0, v4

    iput v0, v5, Lo/ৰ$if;->weight:I

    .line 103
    iget v0, p0, Lo/ৰ;->By:I

    sub-int/2addr v0, v4

    iput v0, p0, Lo/ৰ;->By:I

    .line 105
    :cond_2
    :goto_2
    goto :goto_1

    .line 106
    :cond_3
    return-void
.end method

.method public ﹳ(F)F
    .locals 7

    .line 115
    invoke-direct {p0}, Lo/ৰ;->ӱ()V

    .line 116
    iget v0, p0, Lo/ৰ;->By:I

    int-to-float v0, v0

    mul-float v3, p1, v0

    .line 117
    const/4 v4, 0x0

    .line 118
    const/4 v5, 0x0

    :goto_0
    iget-object v0, p0, Lo/ৰ;->Bu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v5, v0, :cond_1

    .line 119
    iget-object v0, p0, Lo/ৰ;->Bu:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ৰ$if;

    move-object v6, v0

    .line 120
    iget v0, v6, Lo/ৰ$if;->weight:I

    add-int/2addr v4, v0

    .line 121
    int-to-float v0, v4

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_0

    .line 122
    iget v0, v6, Lo/ৰ$if;->value:F

    return v0

    .line 118
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lo/ৰ;->Bu:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x7fc00000    # NaNf

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lo/ৰ;->Bu:Ljava/util/ArrayList;

    iget-object v1, p0, Lo/ৰ;->Bu:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/ৰ$if;

    iget v0, v0, Lo/ৰ$if;->value:F

    :goto_1
    return v0
.end method
