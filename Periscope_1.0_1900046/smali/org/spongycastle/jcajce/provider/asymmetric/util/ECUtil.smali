.class public Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ʿ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;
    .locals 1

    .line 245
    invoke-static {p0}, Lorg/spongycastle/crypto/ec/CustomNamedCurves;->ᐝ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 247
    if-nez v0, :cond_2

    .line 249
    invoke-static {p0}, Lorg/spongycastle/asn1/x9/X962NamedCurves;->ᐝ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 250
    if-nez v0, :cond_0

    .line 252
    invoke-static {p0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->ᐝ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 254
    :cond_0
    if-nez v0, :cond_1

    .line 256
    invoke-static {p0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->ᐝ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 258
    :cond_1
    if-nez v0, :cond_2

    .line 260
    invoke-static {p0}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->ᐝ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Lorg/spongycastle/asn1/x9/X9ECParameters;

    move-result-object v0

    .line 264
    :cond_2
    return-object v0
.end method

.method public static ˈ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;
    .locals 1

    .line 270
    invoke-static {p0}, Lorg/spongycastle/asn1/x9/X962NamedCurves;->ˎ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 272
    if-nez v0, :cond_2

    .line 274
    invoke-static {p0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->ˎ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 275
    if-nez v0, :cond_0

    .line 277
    invoke-static {p0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->ˎ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 279
    :cond_0
    if-nez v0, :cond_1

    .line 281
    invoke-static {p0}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->ˎ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_1
    if-nez v0, :cond_2

    .line 285
    invoke-static {p0}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ˎ(Lorg/spongycastle/asn1/ASN1ObjectIdentifier;)Ljava/lang/String;

    move-result-object v0

    .line 289
    :cond_2
    return-object v0
.end method

.method public static ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 10

    .line 167
    instance-of v0, p0, Lorg/spongycastle/jce/interfaces/ECPrivateKey;

    if-eqz v0, :cond_1

    .line 169
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/jce/interfaces/ECPrivateKey;

    move-object v8, v0

    .line 170
    invoke-interface {v8}, Lorg/spongycastle/jce/interfaces/ECPrivateKey;->nB()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v9

    .line 172
    if-nez v9, :cond_0

    .line 174
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v9

    .line 177
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-interface {v8}, Lorg/spongycastle/jce/interfaces/ECPrivateKey;->kz()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->gy()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->ix()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    return-object v0

    .line 181
    :cond_1
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_2

    .line 183
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    move-object v8, v0

    .line 184
    invoke-interface {v8}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v9

    .line 185
    new-instance v0, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;

    invoke-interface {v8}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->gy()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->ix()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ECPrivateKeyParameters;-><init>(Ljava/math/BigInteger;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    return-object v0

    .line 194
    :cond_2
    :try_start_0
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v8

    .line 196
    if-nez v8, :cond_3

    .line 198
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "no encoding for EC private key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 201
    :cond_3
    invoke-static {v8}, Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;->ﹷ(Ljava/lang/Object;)Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ˏ(Lorg/spongycastle/asn1/pkcs/PrivateKeyInfo;)Ljava/security/PrivateKey;

    move-result-object v9

    .line 203
    instance-of v0, v9, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_4

    .line 205
    invoke-static {v9}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PrivateKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 211
    :cond_4
    goto :goto_0

    .line 208
    :catch_0
    move-exception v8

    .line 210
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot identify EC private key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :goto_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "can\'t identify EC private key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    .locals 10

    .line 107
    instance-of v0, p0, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    if-eqz v0, :cond_1

    .line 109
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/jce/interfaces/ECPublicKey;

    move-object v8, v0

    .line 110
    invoke-interface {v8}, Lorg/spongycastle/jce/interfaces/ECPublicKey;->nB()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v9

    .line 112
    if-nez v9, :cond_0

    .line 114
    sget-object v0, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->baC:Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;

    invoke-interface {v0}, Lorg/spongycastle/jcajce/provider/config/ProviderConfiguration;->nN()Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v9

    .line 116
    new-instance v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    move-object v1, v8

    check-cast v1, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;

    invoke-virtual {v1}, Lorg/spongycastle/jcajce/provider/asymmetric/ec/BCECPublicKey;->nE()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->gy()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->ix()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    return-object v0

    .line 122
    :cond_0
    new-instance v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-interface {v8}, Lorg/spongycastle/jce/interfaces/ECPublicKey;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->gy()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->ix()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    return-object v0

    .line 127
    :cond_1
    instance-of v0, p0, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_2

    .line 129
    move-object v0, p0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    move-object v8, v0

    .line 130
    invoke-interface {v8}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Z)Lorg/spongycastle/jce/spec/ECParameterSpec;

    move-result-object v9

    .line 131
    new-instance v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-interface {v8}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-interface {v8}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lorg/spongycastle/jcajce/provider/asymmetric/util/EC5Util;->ˊ(Ljava/security/spec/ECParameterSpec;Ljava/security/spec/ECPoint;Z)Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v1

    new-instance v2, Lorg/spongycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iv()Lorg/spongycastle/math/ec/ECCurve;

    move-result-object v3

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->iw()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v4

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->gy()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->ix()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v9}, Lorg/spongycastle/jce/spec/ECParameterSpec;->getSeed()[B

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;-><init>(Lorg/spongycastle/math/ec/ECPoint;Lorg/spongycastle/crypto/params/ECDomainParameters;)V

    return-object v0

    .line 140
    :cond_2
    :try_start_0
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v8

    .line 142
    if-nez v8, :cond_3

    .line 144
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "no encoding for EC public key"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_3
    invoke-static {v8}, Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;->ן(Ljava/lang/Object;)Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/jce/provider/BouncyCastleProvider;->ʼ(Lorg/spongycastle/asn1/x509/SubjectPublicKeyInfo;)Ljava/security/PublicKey;

    move-result-object v9

    .line 149
    instance-of v0, v9, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_4

    .line 151
    invoke-static {v9}, Lorg/spongycastle/jcajce/provider/asymmetric/util/ECUtil;->ˊ(Ljava/security/PublicKey;)Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 157
    :cond_4
    goto :goto_0

    .line 154
    :catch_0
    move-exception v8

    .line 156
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot identify EC public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :goto_0
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "cannot identify EC public key."

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ᴊ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    .line 220
    invoke-static {p0}, Lorg/spongycastle/asn1/x9/X962NamedCurves;->ϊ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 222
    if-nez v0, :cond_2

    .line 224
    invoke-static {p0}, Lorg/spongycastle/asn1/sec/SECNamedCurves;->ϊ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 225
    if-nez v0, :cond_0

    .line 227
    invoke-static {p0}, Lorg/spongycastle/asn1/nist/NISTNamedCurves;->ϊ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 229
    :cond_0
    if-nez v0, :cond_1

    .line 231
    invoke-static {p0}, Lorg/spongycastle/asn1/teletrust/TeleTrusTNamedCurves;->ϊ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 233
    :cond_1
    if-nez v0, :cond_2

    .line 235
    invoke-static {p0}, Lorg/spongycastle/asn1/cryptopro/ECGOST3410NamedCurves;->ϊ(Ljava/lang/String;)Lorg/spongycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    .line 239
    :cond_2
    return-object v0
.end method

.method static ι([I)[I
    .locals 3

    .line 43
    const/4 v0, 0x3

    new-array v2, v0, [I

    .line 45
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 47
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x0

    aput v0, v2, v1

    goto/16 :goto_0

    .line 51
    :cond_0
    array-length v0, p0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 53
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only Trinomials and pentanomials supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_1
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    if-ge v0, v1, :cond_3

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    if-ge v0, v1, :cond_3

    .line 58
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x0

    aput v0, v2, v1

    .line 59
    const/4 v0, 0x1

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    if-ge v0, v1, :cond_2

    .line 61
    const/4 v0, 0x1

    aget v0, p0, v0

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 62
    const/4 v0, 0x2

    aget v0, p0, v0

    const/4 v1, 0x2

    aput v0, v2, v1

    goto :goto_0

    .line 66
    :cond_2
    const/4 v0, 0x2

    aget v0, p0, v0

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 67
    const/4 v0, 0x1

    aget v0, p0, v0

    const/4 v1, 0x2

    aput v0, v2, v1

    goto :goto_0

    .line 70
    :cond_3
    const/4 v0, 0x1

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    if-ge v0, v1, :cond_5

    .line 72
    const/4 v0, 0x1

    aget v0, p0, v0

    const/4 v1, 0x0

    aput v0, v2, v1

    .line 73
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x2

    aget v1, p0, v1

    if-ge v0, v1, :cond_4

    .line 75
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 76
    const/4 v0, 0x2

    aget v0, p0, v0

    const/4 v1, 0x2

    aput v0, v2, v1

    goto :goto_0

    .line 80
    :cond_4
    const/4 v0, 0x2

    aget v0, p0, v0

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 81
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x2

    aput v0, v2, v1

    goto :goto_0

    .line 86
    :cond_5
    const/4 v0, 0x2

    aget v0, p0, v0

    const/4 v1, 0x0

    aput v0, v2, v1

    .line 87
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    if-ge v0, v1, :cond_6

    .line 89
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 90
    const/4 v0, 0x1

    aget v0, p0, v0

    const/4 v1, 0x2

    aput v0, v2, v1

    goto :goto_0

    .line 94
    :cond_6
    const/4 v0, 0x1

    aget v0, p0, v0

    const/4 v1, 0x1

    aput v0, v2, v1

    .line 95
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x2

    aput v0, v2, v1

    .line 100
    :goto_0
    return-object v2
.end method
