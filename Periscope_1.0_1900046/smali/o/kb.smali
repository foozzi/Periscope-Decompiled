.class public final enum Lo/kb;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/kb;>;"
    }
.end annotation


# static fields
.field public static final enum NA:Lo/kb;

.field public static final enum NB:Lo/kb;

.field public static final enum NC:Lo/kb;

.field private static final synthetic ND:[Lo/kb;

.field public static final enum Nt:Lo/kb;

.field public static final enum Nu:Lo/kb;

.field public static final enum Nv:Lo/kb;

.field public static final enum Nw:Lo/kb;

.field public static final enum Nx:Lo/kb;

.field public static final enum Ny:Lo/kb;

.field public static final enum Nz:Lo/kb;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lo/kb;

    const-string v1, "BEGIN_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/kb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/kb;->Nt:Lo/kb;

    .line 37
    new-instance v0, Lo/kb;

    const-string v1, "END_ARRAY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/kb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/kb;->Nu:Lo/kb;

    .line 43
    new-instance v0, Lo/kb;

    const-string v1, "BEGIN_OBJECT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/kb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/kb;->Nv:Lo/kb;

    .line 49
    new-instance v0, Lo/kb;

    const-string v1, "END_OBJECT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lo/kb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/kb;->Nw:Lo/kb;

    .line 56
    new-instance v0, Lo/kb;

    const-string v1, "NAME"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lo/kb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/kb;->Nx:Lo/kb;

    .line 61
    new-instance v0, Lo/kb;

    const-string v1, "STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lo/kb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/kb;->Ny:Lo/kb;

    .line 67
    new-instance v0, Lo/kb;

    const-string v1, "NUMBER"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lo/kb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/kb;->Nz:Lo/kb;

    .line 72
    new-instance v0, Lo/kb;

    const-string v1, "BOOLEAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lo/kb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/kb;->NA:Lo/kb;

    .line 77
    new-instance v0, Lo/kb;

    const-string v1, "NULL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lo/kb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/kb;->NB:Lo/kb;

    .line 84
    new-instance v0, Lo/kb;

    const-string v1, "END_DOCUMENT"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lo/kb;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/kb;->NC:Lo/kb;

    .line 25
    const/16 v0, 0xa

    new-array v0, v0, [Lo/kb;

    sget-object v1, Lo/kb;->Nt:Lo/kb;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/kb;->Nu:Lo/kb;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/kb;->Nv:Lo/kb;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/kb;->Nw:Lo/kb;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lo/kb;->Nx:Lo/kb;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lo/kb;->Ny:Lo/kb;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lo/kb;->Nz:Lo/kb;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lo/kb;->NA:Lo/kb;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lo/kb;->NB:Lo/kb;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lo/kb;->NC:Lo/kb;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lo/kb;->ND:[Lo/kb;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/kb;
    .locals 1

    .line 25
    const-class v0, Lo/kb;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/kb;

    return-object v0
.end method

.method public static values()[Lo/kb;
    .locals 1

    .line 25
    sget-object v0, Lo/kb;->ND:[Lo/kb;

    invoke-virtual {v0}, [Lo/kb;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/kb;

    return-object v0
.end method
