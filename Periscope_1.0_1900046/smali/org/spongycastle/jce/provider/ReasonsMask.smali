.class Lorg/spongycastle/jce/provider/ReasonsMask;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final bbN:Lorg/spongycastle/jce/provider/ReasonsMask;


# instance fields
.field private bbM:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lorg/spongycastle/jce/provider/ReasonsMask;

    const v1, 0x80ff

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(I)V

    sput-object v0, Lorg/spongycastle/jce/provider/ReasonsMask;->bbN:Lorg/spongycastle/jce/provider/ReasonsMask;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(I)V

    .line 35
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->bbM:I

    .line 26
    return-void
.end method

.method constructor <init>(Lorg/spongycastle/asn1/x509/ReasonFlags;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Lorg/spongycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->bbM:I

    .line 21
    return-void
.end method


# virtual methods
.method oY()Z
    .locals 2

    .line 65
    iget v0, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->bbM:I

    sget-object v1, Lorg/spongycastle/jce/provider/ReasonsMask;->bbN:Lorg/spongycastle/jce/provider/ReasonsMask;

    iget v1, v1, Lorg/spongycastle/jce/provider/ReasonsMask;->bbM:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method oZ()I
    .locals 1

    .line 99
    iget v0, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->bbM:I

    return v0
.end method

.method ˊ(Lorg/spongycastle/jce/provider/ReasonsMask;)V
    .locals 2

    .line 53
    iget v0, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->bbM:I

    invoke-virtual {p1}, Lorg/spongycastle/jce/provider/ReasonsMask;->oZ()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->bbM:I

    .line 54
    return-void
.end method

.method ˋ(Lorg/spongycastle/jce/provider/ReasonsMask;)Lorg/spongycastle/jce/provider/ReasonsMask;
    .locals 4

    .line 76
    new-instance v3, Lorg/spongycastle/jce/provider/ReasonsMask;

    invoke-direct {v3}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>()V

    .line 77
    new-instance v0, Lorg/spongycastle/jce/provider/ReasonsMask;

    iget v1, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->bbM:I

    invoke-virtual {p1}, Lorg/spongycastle/jce/provider/ReasonsMask;->oZ()I

    move-result v2

    and-int/2addr v1, v2

    invoke-direct {v0, v1}, Lorg/spongycastle/jce/provider/ReasonsMask;-><init>(I)V

    invoke-virtual {v3, v0}, Lorg/spongycastle/jce/provider/ReasonsMask;->ˊ(Lorg/spongycastle/jce/provider/ReasonsMask;)V

    .line 78
    return-object v3
.end method

.method ˎ(Lorg/spongycastle/jce/provider/ReasonsMask;)Z
    .locals 3

    .line 89
    iget v0, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->bbM:I

    invoke-virtual {p1}, Lorg/spongycastle/jce/provider/ReasonsMask;->oZ()I

    move-result v1

    iget v2, p0, Lorg/spongycastle/jce/provider/ReasonsMask;->bbM:I

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
