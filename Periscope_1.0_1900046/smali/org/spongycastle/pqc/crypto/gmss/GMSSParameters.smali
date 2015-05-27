.class public Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aGN:[I

.field private beC:[I

.field private beO:I

.field private beP:[I


# direct methods
.method public constructor <init>(I[I[I[I)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->ˏ(I[I[I[I)V

    .line 45
    return-void
.end method

.method private ˏ(I[I[I[I)V
    .locals 5

    .line 51
    const/4 v2, 0x1

    .line 52
    const-string v3, ""

    .line 53
    iput p1, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->beO:I

    .line 54
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->beO:I

    array-length v1, p3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->beO:I

    array-length v1, p2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->beO:I

    array-length v1, p4

    if-eq v0, v1, :cond_1

    .line 58
    :cond_0
    const/4 v2, 0x0

    .line 59
    const-string v3, "Unexpected parameterset format"

    .line 61
    :cond_1
    const/4 v4, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->beO:I

    if-ge v4, v0, :cond_6

    .line 63
    aget v0, p4, v4

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2

    aget v0, p2, v4

    aget v1, p4, v4

    sub-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 65
    :cond_2
    const/4 v2, 0x0

    .line 66
    const-string v3, "Wrong parameter K (K >= 2 and H-K even required)!"

    .line 69
    :cond_3
    aget v0, p2, v4

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    aget v0, p3, v4

    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    .line 71
    :cond_4
    const/4 v2, 0x0

    .line 72
    const-string v3, "Wrong parameter H or w (H > 3 and w > 1 required)!"

    .line 61
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 76
    :cond_6
    if-eqz v2, :cond_7

    .line 78
    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->י([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->beC:[I

    .line 79
    invoke-static {p3}, Lorg/spongycastle/util/Arrays;->י([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->beP:[I

    .line 80
    invoke-static {p4}, Lorg/spongycastle/util/Arrays;->י([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->aGN:[I

    goto :goto_1

    .line 84
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :goto_1
    return-void
.end method


# virtual methods
.method public qN()I
    .locals 1

    .line 121
    iget v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->beO:I

    return v0
.end method

.method public qO()[I
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->beC:[I

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->י([I)[I

    move-result-object v0

    return-object v0
.end method

.method public qP()[I
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->beP:[I

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->י([I)[I

    move-result-object v0

    return-object v0
.end method

.method public qQ()[I
    .locals 1

    .line 153
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/GMSSParameters;->aGN:[I

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->י([I)[I

    move-result-object v0

    return-object v0
.end method
