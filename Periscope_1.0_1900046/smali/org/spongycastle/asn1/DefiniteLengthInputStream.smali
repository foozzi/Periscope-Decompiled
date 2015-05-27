.class Lorg/spongycastle/asn1/DefiniteLengthInputStream;
.super Lorg/spongycastle/asn1/LimitedInputStream;
.source ""


# static fields
.field private static final abo:[B


# instance fields
.field private final abp:I

.field private abq:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abo:[B

    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;I)V
    .locals 2

    .line 21
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/asn1/LimitedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 23
    if-gez p2, :cond_0

    .line 25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative lengths not allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_0
    iput p2, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abp:I

    .line 29
    iput p2, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abq:I

    .line 31
    if-nez p2, :cond_1

    .line 33
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->ᵄ(Z)V

    .line 35
    :cond_1
    return-void
.end method


# virtual methods
.method getRemaining()I
    .locals 1

    .line 39
    iget v0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abq:I

    return v0
.end method

.method public read()I
    .locals 4

    .line 45
    iget v0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abq:I

    if-nez v0, :cond_0

    .line 47
    const/4 v0, -0x1

    return v0

    .line 50
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->aaA:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 52
    if-gez v3, :cond_1

    .line 54
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEF length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " object truncated by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    iget v0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abq:I

    if-nez v0, :cond_2

    .line 59
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->ᵄ(Z)V

    .line 62
    :cond_2
    return v3
.end method

.method public read([BII)I
    .locals 5

    .line 68
    iget v0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abq:I

    if-nez v0, :cond_0

    .line 70
    const/4 v0, -0x1

    return v0

    .line 73
    :cond_0
    iget v0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abq:I

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 74
    iget-object v0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->aaA:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 76
    if-gez v4, :cond_1

    .line 78
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEF length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " object truncated by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_1
    iget v0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abq:I

    sub-int/2addr v0, v4

    iput v0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abq:I

    if-nez v0, :cond_2

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->ᵄ(Z)V

    .line 86
    :cond_2
    return v4
.end method

.method toByteArray()[B
    .locals 4

    .line 92
    iget v0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abq:I

    if-nez v0, :cond_0

    .line 94
    sget-object v0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abo:[B

    return-object v0

    .line 97
    :cond_0
    iget v0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abq:I

    new-array v3, v0, [B

    .line 98
    iget v0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abq:I

    iget-object v1, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->aaA:Ljava/io/InputStream;

    invoke-static {v1, v3}, Lorg/spongycastle/util/io/Streams;->ˎ(Ljava/io/InputStream;[B)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abq:I

    if-eqz v0, :cond_1

    .line 100
    new-instance v0, Ljava/io/EOFException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DEF length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " object truncated by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->abq:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/spongycastle/asn1/DefiniteLengthInputStream;->ᵄ(Z)V

    .line 103
    return-object v3
.end method
