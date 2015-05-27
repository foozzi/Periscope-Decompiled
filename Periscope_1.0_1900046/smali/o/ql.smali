.class public final enum Lo/ql;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/ql;>;"
    }
.end annotation


# static fields
.field public static final enum VN:Lo/ql;

.field public static final enum VO:Lo/ql;

.field public static final enum VP:Lo/ql;

.field public static final enum VQ:Lo/ql;

.field private static final synthetic VR:[Lo/ql;


# instance fields
.field private final id:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 10
    new-instance v0, Lo/ql;

    const-string v1, "DEVELOPER"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lo/ql;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/ql;->VN:Lo/ql;

    new-instance v0, Lo/ql;

    const-string v1, "USER_SIDELOAD"

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lo/ql;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/ql;->VO:Lo/ql;

    new-instance v0, Lo/ql;

    const-string v1, "TEST_DISTRIBUTION"

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lo/ql;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/ql;->VP:Lo/ql;

    new-instance v0, Lo/ql;

    const-string v1, "APP_STORE"

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lo/ql;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/ql;->VQ:Lo/ql;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lo/ql;

    sget-object v1, Lo/ql;->VN:Lo/ql;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/ql;->VO:Lo/ql;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/ql;->VP:Lo/ql;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/ql;->VQ:Lo/ql;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lo/ql;->VR:[Lo/ql;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lo/ql;->id:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/ql;
    .locals 1

    .line 8
    const-class v0, Lo/ql;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/ql;

    return-object v0
.end method

.method public static values()[Lo/ql;
    .locals 1

    .line 8
    sget-object v0, Lo/ql;->VR:[Lo/ql;

    invoke-virtual {v0}, [Lo/ql;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/ql;

    return-object v0
.end method

.method public static ї(Ljava/lang/String;)Lo/ql;
    .locals 1

    .line 34
    const-string v0, "io.crash.air"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    sget-object v0, Lo/ql;->VP:Lo/ql;

    return-object v0

    .line 36
    :cond_0
    if-eqz p0, :cond_1

    .line 37
    sget-object v0, Lo/ql;->VQ:Lo/ql;

    return-object v0

    .line 39
    :cond_1
    sget-object v0, Lo/ql;->VN:Lo/ql;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 21
    iget v0, p0, Lo/ql;->id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 26
    iget v0, p0, Lo/ql;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
