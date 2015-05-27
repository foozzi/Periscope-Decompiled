.class public final enum Lo/ᔿ;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/\u153f;>;"
    }
.end annotation


# static fields
.field public static final enum eS:Lo/ᔿ;

.field public static final enum eT:Lo/ᔿ;

.field public static final enum eU:Lo/ᔿ;

.field public static final enum eV:Lo/ᔿ;

.field private static final synthetic eW:[Lo/ᔿ;

.field public static final enum em:Lo/ᔿ;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lo/ᔿ;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/ᔿ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ᔿ;->eS:Lo/ᔿ;

    .line 10
    new-instance v0, Lo/ᔿ;

    const-string v1, "HIGH"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/ᔿ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ᔿ;->eT:Lo/ᔿ;

    .line 11
    new-instance v0, Lo/ᔿ;

    const-string v1, "NORMAL"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/ᔿ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ᔿ;->eU:Lo/ᔿ;

    .line 12
    new-instance v0, Lo/ᔿ;

    const-string v1, "LOW"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lo/ᔿ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ᔿ;->eV:Lo/ᔿ;

    new-instance v0, Lo/ᔿ;

    const-string v1, "priority"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lo/ᔿ;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/ᔿ;->em:Lo/ᔿ;

    .line 8
    const/4 v0, 0x5

    new-array v0, v0, [Lo/ᔿ;

    sget-object v1, Lo/ᔿ;->eS:Lo/ᔿ;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/ᔿ;->eT:Lo/ᔿ;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/ᔿ;->eU:Lo/ᔿ;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/ᔿ;->eV:Lo/ᔿ;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lo/ᔿ;->em:Lo/ᔿ;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lo/ᔿ;->eW:[Lo/ᔿ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/ᔿ;
    .locals 1

    .line 8
    const-class v0, Lo/ᔿ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/ᔿ;

    return-object v0
.end method

.method public static values()[Lo/ᔿ;
    .locals 1

    .line 8
    sget-object v0, Lo/ᔿ;->eW:[Lo/ᔿ;

    invoke-virtual {v0}, [Lo/ᔿ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/ᔿ;

    return-object v0
.end method
