.class public final Lo/Ỳ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ᒎ;
.implements Lo/ᒲ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/Ỳ$1;,
        Lo/Ỳ$ˊ;,
        Lo/Ỳ$ˋ;,
        Lo/Ỳ$if;,
        Lo/Ỳ$ˎ;
    }
.end annotation


# instance fields
.field private final wR:J

.field private final xr:Lo/প;

.field private final xs:Lo/ন;

.field final xt:Landroid/util/SparseBooleanArray;

.field final xu:Landroid/util/SparseBooleanArray;

.field final xv:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<Lo/\u1ef2$\u02ce;>;"
        }
    .end annotation
.end field

.field private xw:Lo/ᒬ;

.field private xx:J

.field private xy:J

.field xz:Lo/ᴒ;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 68
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lo/Ỳ;-><init>(JLo/ۂ;)V

    .line 69
    return-void
.end method

.method public constructor <init>(JLo/ۂ;)V
    .locals 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide p1, p0, Lo/Ỳ;->wR:J

    .line 73
    new-instance v0, Lo/ন;

    const/4 v1, 0x3

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lo/ন;-><init>([B)V

    iput-object v0, p0, Lo/Ỳ;->xs:Lo/ন;

    .line 74
    new-instance v0, Lo/প;

    const/16 v1, 0xbc

    invoke-direct {v0, v1}, Lo/প;-><init>(I)V

    iput-object v0, p0, Lo/Ỳ;->xr:Lo/প;

    .line 75
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lo/Ỳ;->xt:Landroid/util/SparseBooleanArray;

    .line 76
    invoke-static {p3}, Lo/Ỳ;->ˊ(Lo/ۂ;)Landroid/util/SparseBooleanArray;

    move-result-object v0

    iput-object v0, p0, Lo/Ỳ;->xu:Landroid/util/SparseBooleanArray;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lo/Ỳ;->xv:Landroid/util/SparseArray;

    .line 78
    iget-object v0, p0, Lo/Ỳ;->xv:Landroid/util/SparseArray;

    new-instance v1, Lo/Ỳ$if;

    invoke-direct {v1, p0}, Lo/Ỳ$if;-><init>(Lo/Ỳ;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lo/Ỳ;->xy:J

    .line 80
    return-void
.end method

.method private static ˊ(Lo/ۂ;)Landroid/util/SparseBooleanArray;
    .locals 3

    .line 186
    new-instance v2, Landroid/util/SparseBooleanArray;

    invoke-direct {v2}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 187
    if-eqz p0, :cond_1

    .line 188
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lo/ۂ;->ז(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    const/16 v0, 0x81

    const/4 v1, 0x1

    invoke-virtual {v2, v0, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 191
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lo/ۂ;->ז(I)Z

    move-result v0

    .line 196
    :cond_1
    return-object v2
.end method


# virtual methods
.method ˆ(J)J
    .locals 10

    .line 161
    iget-wide v0, p0, Lo/Ỳ;->xy:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 164
    iget-wide v0, p0, Lo/Ỳ;->xy:J

    const-wide v2, 0xffffffffL

    add-long/2addr v0, v2

    const-wide v2, 0x1ffffffffL

    div-long v4, v0, v2

    .line 165
    const-wide/16 v0, 0x1

    sub-long v0, v4, v0

    const-wide v2, 0x1ffffffffL

    mul-long/2addr v0, v2

    add-long v6, p1, v0

    .line 166
    const-wide v0, 0x1ffffffffL

    mul-long/2addr v0, v4

    add-long v8, p1, v0

    .line 167
    iget-wide v0, p0, Lo/Ỳ;->xy:J

    sub-long v0, v6, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    iget-wide v2, p0, Lo/Ỳ;->xy:J

    sub-long v2, v8, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    move-wide p1, v6

    goto :goto_0

    :cond_0
    move-wide p1, v8

    .line 171
    :cond_1
    :goto_0
    const-wide/32 v0, 0xf4240

    mul-long/2addr v0, p1

    const-wide/32 v2, 0x15f90

    div-long v4, v0, v2

    .line 173
    iget-wide v0, p0, Lo/Ỳ;->xy:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 174
    iget-wide v0, p0, Lo/Ỳ;->wR:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lo/Ỳ;->xx:J

    .line 177
    :cond_2
    iput-wide p1, p0, Lo/Ỳ;->xy:J

    .line 178
    iget-wide v0, p0, Lo/Ỳ;->xx:J

    add-long/2addr v0, v4

    return-wide v0
.end method

.method public ˊ(Lo/ᒑ;Lo/ᒮ;)I
    .locals 10

    .line 102
    iget-object v0, p0, Lo/Ỳ;->xr:Lo/প;

    iget-object v0, v0, Lo/প;->fw:[B

    const/4 v1, 0x0

    const/16 v2, 0xbc

    const/4 v3, 0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lo/ᒑ;->ˊ([BIIZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, -0x1

    return v0

    .line 106
    :cond_0
    iget-object v0, p0, Lo/Ỳ;->xr:Lo/প;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/প;->setPosition(I)V

    .line 107
    iget-object v0, p0, Lo/Ỳ;->xr:Lo/প;

    const/16 v1, 0xbc

    invoke-virtual {v0, v1}, Lo/প;->ʟ(I)V

    .line 108
    iget-object v0, p0, Lo/Ỳ;->xr:Lo/প;

    invoke-virtual {v0}, Lo/প;->readUnsignedByte()I

    move-result v4

    .line 109
    const/16 v0, 0x47

    if-eq v4, v0, :cond_1

    .line 110
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_1
    iget-object v0, p0, Lo/Ỳ;->xr:Lo/প;

    iget-object v1, p0, Lo/Ỳ;->xs:Lo/ন;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lo/প;->ˋ(Lo/ন;I)V

    .line 114
    iget-object v0, p0, Lo/Ỳ;->xs:Lo/ন;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 115
    iget-object v0, p0, Lo/Ỳ;->xs:Lo/ন;

    invoke-virtual {v0}, Lo/ন;->ʎ()Z

    move-result v5

    .line 116
    iget-object v0, p0, Lo/Ỳ;->xs:Lo/ন;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 117
    iget-object v0, p0, Lo/Ỳ;->xs:Lo/ন;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lo/ন;->ɾ(I)I

    move-result v6

    .line 118
    iget-object v0, p0, Lo/Ỳ;->xs:Lo/ন;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lo/ন;->ɪ(I)V

    .line 119
    iget-object v0, p0, Lo/Ỳ;->xs:Lo/ন;

    invoke-virtual {v0}, Lo/ন;->ʎ()Z

    move-result v7

    .line 120
    iget-object v0, p0, Lo/Ỳ;->xs:Lo/ন;

    invoke-virtual {v0}, Lo/ন;->ʎ()Z

    move-result v8

    .line 124
    if-eqz v7, :cond_2

    .line 125
    iget-object v0, p0, Lo/Ỳ;->xr:Lo/প;

    invoke-virtual {v0}, Lo/প;->readUnsignedByte()I

    move-result v9

    .line 126
    iget-object v0, p0, Lo/Ỳ;->xr:Lo/প;

    invoke-virtual {v0, v9}, Lo/প;->ʰ(I)V

    .line 130
    :cond_2
    if-eqz v8, :cond_3

    .line 131
    iget-object v0, p0, Lo/Ỳ;->xv:Landroid/util/SparseArray;

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Ỳ$ˎ;

    move-object v9, v0

    .line 132
    if-eqz v9, :cond_3

    .line 133
    iget-object v0, p0, Lo/Ỳ;->xr:Lo/প;

    iget-object v1, p0, Lo/Ỳ;->xw:Lo/ᒬ;

    invoke-virtual {v9, v0, v5, v1}, Lo/Ỳ$ˎ;->ˊ(Lo/প;ZLo/ᒬ;)V

    .line 137
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public ˊ(Lo/ᒬ;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lo/Ỳ;->xw:Lo/ᒬ;

    .line 87
    invoke-interface {p1, p0}, Lo/ᒬ;->ˊ(Lo/ᒲ;)V

    .line 88
    return-void
.end method

.method public ᒮ()V
    .locals 3

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/Ỳ;->xx:J

    .line 93
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lo/Ỳ;->xy:J

    .line 94
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lo/Ỳ;->xv:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 95
    iget-object v0, p0, Lo/Ỳ;->xv:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/Ỳ$ˎ;

    invoke-virtual {v0}, Lo/Ỳ$ˎ;->ᒮ()V

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method public ᚆ()Z
    .locals 1

    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public ｰ(J)J
    .locals 2

    .line 149
    const-wide/16 v0, 0x0

    return-wide v0
.end method
