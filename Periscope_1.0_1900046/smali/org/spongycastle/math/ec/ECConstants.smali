.class public interface abstract Lorg/spongycastle/math/ec/ECConstants;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ONE:Ljava/math/BigInteger;

.field public static final ZERO:Ljava/math/BigInteger;

.field public static final aKc:Ljava/math/BigInteger;

.field public static final bch:Ljava/math/BigInteger;

.field public static final bci:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 7
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    .line 8
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    .line 9
    const-wide/16 v0, 0x2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/math/ec/ECConstants;->aKc:Ljava/math/BigInteger;

    .line 10
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/math/ec/ECConstants;->bch:Ljava/math/BigInteger;

    .line 11
    const-wide/16 v0, 0x4

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/spongycastle/math/ec/ECConstants;->bci:Ljava/math/BigInteger;

    return-void
.end method
