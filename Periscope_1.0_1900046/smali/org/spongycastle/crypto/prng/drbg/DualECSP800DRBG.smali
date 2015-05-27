.class public Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/prng/drbg/SP80090DRBG;


# static fields
.field private static final aRA:Ljava/math/BigInteger;

.field private static final aRB:Ljava/math/BigInteger;

.field private static final aRC:Ljava/math/BigInteger;

.field private static final aRD:Ljava/math/BigInteger;

.field private static final aRE:Ljava/math/BigInteger;

.field private static final aRF:Ljava/math/BigInteger;

.field private static final aRG:Ljava/math/BigInteger;

.field private static final aRH:Ljava/math/BigInteger;

.field private static final aRI:Ljava/math/BigInteger;

.field private static final aRJ:[Lorg/spongycastle/crypto/prng/drbg/DualECPoints;

.field private static final aRx:Ljava/math/BigInteger;

.field private static final aRy:Ljava/math/BigInteger;

.field private static final aRz:Ljava/math/BigInteger;


# instance fields
.field private aRK:Lorg/spongycastle/crypto/Digest;

.field private aRL:I

.field private aRM:I

.field private aRN:I

.field private aRO:Lorg/spongycastle/math/ec/ECPoint;

.field private aRP:Lorg/spongycastle/math/ec/ECPoint;

.field private aRQ:[B

.field private aRR:I

.field private aRS:Lorg/spongycastle/math/ec/ECMultiplier;

.field private aRm:Lorg/spongycastle/crypto/prng/EntropySource;

.field private aRs:J


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 24
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "6b17d1f2e12c4247f8bce6e563a440f277037d812deb33a0f4a13945d898c296"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRx:Ljava/math/BigInteger;

    .line 25
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "4fe342e2fe1a7f9b8ee7eb4a7c0f9e162bce33576b315ececbb6406837bf51f5"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRy:Ljava/math/BigInteger;

    .line 26
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "c97445f45cdef9f0d3e05e1e585fc297235b82b5be8ff3efca67c59852018192"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRz:Ljava/math/BigInteger;

    .line 27
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "b28ef557ba31dfcbdd21ac46e2a91e3c304f44cb87058ada2cb815151e610046"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRA:Ljava/math/BigInteger;

    .line 29
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "aa87ca22be8b05378eb1c71ef320ad746e1d3b628ba79b9859f741e082542a385502f25dbf55296c3a545e3872760ab7"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRB:Ljava/math/BigInteger;

    .line 30
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "3617de4a96262c6f5d9e98bf9292dc29f8f41dbd289a147ce9da3113b5f0b8c00a60b1ce1d7e819d7a431d7c90ea0e5f"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRC:Ljava/math/BigInteger;

    .line 31
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "8e722de3125bddb05580164bfe20b8b432216a62926c57502ceede31c47816edd1e89769124179d0b695106428815065"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRD:Ljava/math/BigInteger;

    .line 32
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "023b1660dd701d0839fd45eec36f9ee7b32e13b315dc02610aa1b636e346df671f790f84c5e09b05674dbb7e45c803dd"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRE:Ljava/math/BigInteger;

    .line 34
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "c6858e06b70404e9cd9e3ecb662395b4429c648139053fb521f828af606b4d3dbaa14b5e77efe75928fe1dc127a2ffa8de3348b3c1856a429bf97e7e31c2e5bd66"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRF:Ljava/math/BigInteger;

    .line 35
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "11839296a789a3bc0045c8a5fb42c7d1bd998f54449579b446817afbd17273e662c97ee72995ef42640c550b9013fad0761353c7086a272c24088be94769fd16650"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRG:Ljava/math/BigInteger;

    .line 36
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1b9fa3e518d683c6b65763694ac8efbaec6fab44f2276171a42726507dd08add4c3b3f4c1ebc5b1222ddba077f722943b24c3edfa0f85fe24d0c8c01591f0be6f63"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRH:Ljava/math/BigInteger;

    .line 37
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "1f3bdba585295d9a1110d1df1f9430ef8442c5018976ff3437ef91b81dc0b8132c8d5c39c32d0e004a3092b7d327c0e7a4d26d2c7b69b58f9066652911e457779de"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRI:Ljava/math/BigInteger;

    .line 43
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/spongycastle/crypto/prng/drbg/DualECPoints;

    sput-object v0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRJ:[Lorg/spongycastle/crypto/prng/drbg/DualECPoints;

    .line 45
    const-string v0, "P-256"

    invoke-static {v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->ג(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    move-object v6, v0

    .line 47
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRJ:[Lorg/spongycastle/crypto/prng/drbg/DualECPoints;

    new-instance v1, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;

    sget-object v2, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRx:Ljava/math/BigInteger;

    sget-object v3, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRy:Ljava/math/BigInteger;

    invoke-virtual {v6, v2, v3}, Lorg/spongycastle/math/ec/ECCurve$Fp;->ᐝ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRz:Ljava/math/BigInteger;

    sget-object v4, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRA:Ljava/math/BigInteger;

    invoke-virtual {v6, v3, v4}, Lorg/spongycastle/math/ec/ECCurve$Fp;->ᐝ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    const/16 v4, 0x80

    const/4 v5, 0x1

    invoke-direct {v1, v4, v2, v3, v5}, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;-><init>(ILorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 49
    const-string v0, "P-384"

    invoke-static {v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->ג(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    move-object v6, v0

    .line 51
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRJ:[Lorg/spongycastle/crypto/prng/drbg/DualECPoints;

    new-instance v1, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;

    sget-object v2, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRB:Ljava/math/BigInteger;

    sget-object v3, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRC:Ljava/math/BigInteger;

    invoke-virtual {v6, v2, v3}, Lorg/spongycastle/math/ec/ECCurve$Fp;->ᐝ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRD:Ljava/math/BigInteger;

    sget-object v4, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRE:Ljava/math/BigInteger;

    invoke-virtual {v6, v3, v4}, Lorg/spongycastle/math/ec/ECCurve$Fp;->ᐝ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    const/16 v4, 0xc0

    const/4 v5, 0x1

    invoke-direct {v1, v4, v2, v3, v5}, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;-><init>(ILorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;I)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 53
    const-string v0, "P-521"

    invoke-static {v0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->ג(Ljava/lang/String;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/asn1/x9/X9ECParameters;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/spongycastle/math/ec/ECCurve$Fp;

    move-object v6, v0

    .line 55
    sget-object v0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRJ:[Lorg/spongycastle/crypto/prng/drbg/DualECPoints;

    new-instance v1, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;

    sget-object v2, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRF:Ljava/math/BigInteger;

    sget-object v3, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRG:Ljava/math/BigInteger;

    invoke-virtual {v6, v2, v3}, Lorg/spongycastle/math/ec/ECCurve$Fp;->ᐝ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v2

    sget-object v3, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRH:Ljava/math/BigInteger;

    sget-object v4, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRI:Ljava/math/BigInteger;

    invoke-virtual {v6, v3, v4}, Lorg/spongycastle/math/ec/ECCurve$Fp;->ᐝ(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v3

    const/16 v4, 0x100

    const/4 v5, 0x1

    invoke-direct {v1, v4, v2, v3, v5}, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;-><init>(ILorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/math/ec/ECPoint;I)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;ILorg/spongycastle/crypto/prng/EntropySource;[B[B)V
    .locals 7

    .line 90
    move-object v0, p0

    sget-object v1, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRJ:[Lorg/spongycastle/crypto/prng/drbg/DualECPoints;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;-><init>([Lorg/spongycastle/crypto/prng/drbg/DualECPoints;Lorg/spongycastle/crypto/Digest;ILorg/spongycastle/crypto/prng/EntropySource;[B[B)V

    .line 91
    return-void
.end method

.method public constructor <init>([Lorg/spongycastle/crypto/prng/drbg/DualECPoints;Lorg/spongycastle/crypto/Digest;ILorg/spongycastle/crypto/prng/EntropySource;[B[B)V
    .locals 6

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRS:Lorg/spongycastle/math/ec/ECMultiplier;

    .line 107
    iput-object p2, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRK:Lorg/spongycastle/crypto/Digest;

    .line 108
    iput-object p4, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRm:Lorg/spongycastle/crypto/prng/EntropySource;

    .line 109
    iput p3, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRL:I

    .line 111
    const/16 v0, 0x200

    invoke-static {p5, v0}, Lorg/spongycastle/crypto/prng/drbg/Utils;->ʳ([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Personalization string too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    invoke-interface {p4}, Lorg/spongycastle/crypto/prng/EntropySource;->ls()I

    move-result v0

    if-lt v0, p3, :cond_1

    invoke-interface {p4}, Lorg/spongycastle/crypto/prng/EntropySource;->ls()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_2

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EntropySource must provide between "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bits"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_2
    invoke-interface {p4}, Lorg/spongycastle/crypto/prng/EntropySource;->lr()[B

    move-result-object v3

    .line 122
    invoke-static {v3, p6, p5}, Lorg/spongycastle/util/Arrays;->ˏ([B[B[B)[B

    move-result-object v4

    .line 124
    const/4 v5, 0x0

    :goto_0
    array-length v0, p1

    if-eq v5, v0, :cond_5

    .line 126
    aget-object v0, p1, v5

    invoke-virtual {v0}, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;->lz()I

    move-result v0

    if-gt p3, v0, :cond_4

    .line 128
    invoke-static {p2}, Lorg/spongycastle/crypto/prng/drbg/Utils;->ˋ(Lorg/spongycastle/crypto/Digest;)I

    move-result v0

    aget-object v1, p1, v5

    invoke-virtual {v1}, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;->lz()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 130
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Requested security strength is not supported by digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_3
    aget-object v0, p1, v5

    invoke-virtual {v0}, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;->lw()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRM:I

    .line 133
    aget-object v0, p1, v5

    invoke-virtual {v0}, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;->lx()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRN:I

    .line 134
    aget-object v0, p1, v5

    invoke-virtual {v0}, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;->ly()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRO:Lorg/spongycastle/math/ec/ECPoint;

    .line 135
    aget-object v0, p1, v5

    invoke-virtual {v0}, Lorg/spongycastle/crypto/prng/drbg/DualECPoints;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRP:Lorg/spongycastle/math/ec/ECPoint;

    .line 136
    goto :goto_1

    .line 124
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 140
    :cond_5
    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRO:Lorg/spongycastle/math/ec/ECPoint;

    if-nez v0, :cond_6

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security strength cannot be greater than 256 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_6
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRK:Lorg/spongycastle/crypto/Digest;

    iget v1, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRM:I

    invoke-static {v0, v4, v1}, Lorg/spongycastle/crypto/prng/drbg/Utils;->ˊ(Lorg/spongycastle/crypto/Digest;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRQ:[B

    .line 146
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRQ:[B

    array-length v0, v0

    iput v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRR:I

    .line 148
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRs:J

    .line 149
    return-void
.end method

.method private ʿ([B[B)[B
    .locals 4

    .line 280
    if-nez p2, :cond_0

    .line 282
    return-object p1

    .line 285
    :cond_0
    array-length v0, p1

    new-array v2, v0, [B

    .line 287
    const/4 v3, 0x0

    :goto_0
    array-length v0, v2

    if-eq v3, v0, :cond_1

    .line 289
    aget-byte v0, p1, v3

    aget-byte v1, p2, v3

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    .line 287
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 292
    :cond_1
    return-object v2
.end method

.method private ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 1

    .line 318
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRS:Lorg/spongycastle/math/ec/ECMultiplier;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/math/ec/ECMultiplier;->ˋ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->pH()Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private ﹺ([BI)[B
    .locals 6

    .line 298
    rem-int/lit8 v0, p2, 0x8

    if-nez v0, :cond_0

    .line 300
    return-object p1

    .line 303
    :cond_0
    rem-int/lit8 v0, p2, 0x8

    rsub-int/lit8 v2, v0, 0x8

    .line 304
    const/4 v3, 0x0

    .line 306
    array-length v0, p1

    add-int/lit8 v4, v0, -0x1

    :goto_0
    if-ltz v4, :cond_1

    .line 308
    aget-byte v0, p1, v4

    and-int/lit16 v5, v0, 0xff

    .line 309
    shl-int v0, v5, v2

    rsub-int/lit8 v1, v2, 0x8

    shr-int v1, v3, v1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, v4

    .line 310
    move v3, v5

    .line 306
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 313
    :cond_1
    return-object p1
.end method


# virtual methods
.method public ˊ([B[BZ)I
    .locals 10

    .line 172
    array-length v0, p1

    mul-int/lit8 v4, v0, 0x8

    .line 173
    array-length v0, p1

    iget v1, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRN:I

    div-int v5, v0, v1

    .line 175
    const/16 v0, 0x200

    invoke-static {p2, v0}, Lorg/spongycastle/crypto/prng/drbg/Utils;->ʳ([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Additional input too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_0
    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRs:J

    int-to-long v2, v5

    add-long/2addr v0, v2

    const-wide v2, 0x80000000L

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 182
    const/4 v0, -0x1

    return v0

    .line 185
    :cond_1
    if-eqz p3, :cond_2

    .line 187
    invoke-virtual {p0, p2}, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->ۦ([B)V

    .line 188
    const/4 p2, 0x0

    .line 193
    :cond_2
    if-eqz p2, :cond_3

    .line 196
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRK:Lorg/spongycastle/crypto/Digest;

    iget v1, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRM:I

    invoke-static {v0, p2, v1}, Lorg/spongycastle/crypto/prng/drbg/Utils;->ˊ(Lorg/spongycastle/crypto/Digest;[BI)[B

    move-result-object p2

    .line 197
    new-instance v6, Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRQ:[B

    invoke-direct {p0, v0, p2}, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->ʿ([B[B)[B

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {v6, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    goto :goto_0

    .line 201
    :cond_3
    new-instance v6, Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRQ:[B

    const/4 v1, 0x1

    invoke-direct {v6, v1, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 205
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lorg/spongycastle/util/Arrays;->fill([BB)V

    .line 207
    const/4 v7, 0x0

    .line 209
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_5

    .line 211
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRO:Lorg/spongycastle/math/ec/ECPoint;

    invoke-direct {p0, v0, v6}, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 215
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRP:Lorg/spongycastle/math/ec/ECPoint;

    invoke-direct {p0, v0, v6}, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v9

    .line 217
    array-length v0, v9

    iget v1, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRN:I

    if-le v0, v1, :cond_4

    .line 219
    array-length v0, v9

    iget v1, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRN:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRN:I

    invoke-static {v9, v0, p1, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 223
    :cond_4
    iget v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRN:I

    array-length v1, v9

    sub-int/2addr v0, v1

    add-int/2addr v0, v7

    array-length v1, v9

    const/4 v2, 0x0

    invoke-static {v9, v2, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :goto_2
    iget v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRN:I

    add-int/2addr v7, v0

    .line 229
    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRs:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRs:J

    .line 209
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 232
    :cond_5
    array-length v0, p1

    if-ge v7, v0, :cond_7

    .line 234
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRO:Lorg/spongycastle/math/ec/ECPoint;

    invoke-direct {p0, v0, v6}, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 236
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRP:Lorg/spongycastle/math/ec/ECPoint;

    invoke-direct {p0, v0, v6}, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    .line 238
    array-length v0, p1

    sub-int v9, v0, v7

    .line 240
    array-length v0, v8

    iget v1, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRN:I

    if-le v0, v1, :cond_6

    .line 242
    array-length v0, v8

    iget v1, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRN:I

    sub-int/2addr v0, v1

    invoke-static {v8, v0, p1, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 246
    :cond_6
    iget v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRN:I

    array-length v1, v8

    sub-int/2addr v0, v1

    add-int/2addr v0, v7

    const/4 v1, 0x0

    invoke-static {v8, v1, p1, v0, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 249
    :goto_3
    iget-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRs:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRs:J

    .line 253
    :cond_7
    iget v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRR:I

    iget-object v1, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRO:Lorg/spongycastle/math/ec/ECPoint;

    invoke-direct {p0, v1, v6}, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->ˊ(Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/util/BigIntegers;->ʻ(ILjava/math/BigInteger;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRQ:[B

    .line 255
    return v4
.end method

.method public ۦ([B)V
    .locals 4

    .line 265
    const/16 v0, 0x200

    invoke-static {p1, v0}, Lorg/spongycastle/crypto/prng/drbg/Utils;->ʳ([BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Additional input string too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRm:Lorg/spongycastle/crypto/prng/EntropySource;

    invoke-interface {v0}, Lorg/spongycastle/crypto/prng/EntropySource;->lr()[B

    move-result-object v2

    .line 271
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRQ:[B

    iget v1, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRM:I

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->ﹺ([BI)[B

    move-result-object v0

    invoke-static {v0, v2, p1}, Lorg/spongycastle/util/Arrays;->ˏ([B[B[B)[B

    move-result-object v3

    .line 273
    iget-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRK:Lorg/spongycastle/crypto/Digest;

    iget v1, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRM:I

    invoke-static {v0, v3, v1}, Lorg/spongycastle/crypto/prng/drbg/Utils;->ˊ(Lorg/spongycastle/crypto/Digest;[BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRQ:[B

    .line 275
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/prng/drbg/DualECSP800DRBG;->aRs:J

    .line 276
    return-void
.end method
