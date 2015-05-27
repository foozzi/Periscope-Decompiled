.class public Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field private static aZG:Ljava/util/Map;


# instance fields
.field private aFY:[B

.field private iv:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->aZG:Ljava/util/Map;

    .line 91
    sget-object v0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->aZG:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->agY:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "E-A"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->aZG:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->agZ:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "E-B"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->aZG:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->aha:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "E-C"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->aZG:Ljava/util/Map;

    sget-object v1, Lorg/spongycastle/asn1/cryptopro/CryptoProObjectIdentifiers;->ahb:Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "E-D"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->iv:[B

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->aFY:[B

    .line 42
    invoke-static {p1}, Lorg/spongycastle/crypto/engines/GOST28147Engine;->ᓒ(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->aFY:[B

    .line 43
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;[B)V
    .locals 1

    .line 59
    invoke-static {p1}, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->ˎ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-static {p2}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->iv:[B

    .line 61
    return-void
.end method

.method private static ˎ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 4

    .line 99
    sget-object v0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->aZG:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 101
    if-nez v3, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown OID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    return-object v3
.end method


# virtual methods
.method public getIV()[B
    .locals 5

    .line 75
    iget-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->iv:[B

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->iv:[B

    array-length v0, v0

    new-array v4, v0, [B

    .line 82
    iget-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->iv:[B

    array-length v1, v4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    return-object v4
.end method

.method public nD()[B
    .locals 1

    .line 65
    iget-object v0, p0, Lorg/spongycastle/jcajce/spec/GOST28147ParameterSpec;->aFY:[B

    return-object v0
.end method
