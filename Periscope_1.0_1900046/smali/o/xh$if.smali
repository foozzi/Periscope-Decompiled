.class public final enum Lo/xh$if;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/xh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/xh$if;>;"
    }
.end annotation


# static fields
.field public static final enum bpa:Lo/xh$if;

.field public static final enum bpb:Lo/xh$if;

.field public static final enum bpc:Lo/xh$if;

.field public static final enum bpd:Lo/xh$if;

.field public static final enum bpe:Lo/xh$if;

.field private static final synthetic bpf:[Lo/xh$if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Lo/xh$if;

    const-string v1, "NotStarted"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/xh$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/xh$if;->bpa:Lo/xh$if;

    .line 14
    new-instance v0, Lo/xh$if;

    const-string v1, "Published"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/xh$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/xh$if;->bpb:Lo/xh$if;

    .line 15
    new-instance v0, Lo/xh$if;

    const-string v1, "Running"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/xh$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/xh$if;->bpc:Lo/xh$if;

    .line 16
    new-instance v0, Lo/xh$if;

    const-string v1, "TimedOut"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lo/xh$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/xh$if;->bpd:Lo/xh$if;

    .line 17
    new-instance v0, Lo/xh$if;

    const-string v1, "Ended"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lo/xh$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/xh$if;->bpe:Lo/xh$if;

    .line 12
    const/4 v0, 0x5

    new-array v0, v0, [Lo/xh$if;

    sget-object v1, Lo/xh$if;->bpa:Lo/xh$if;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/xh$if;->bpb:Lo/xh$if;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/xh$if;->bpc:Lo/xh$if;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/xh$if;->bpd:Lo/xh$if;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lo/xh$if;->bpe:Lo/xh$if;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lo/xh$if;->bpf:[Lo/xh$if;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/xh$if;
    .locals 1

    .line 12
    const-class v0, Lo/xh$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/xh$if;

    return-object v0
.end method

.method public static values()[Lo/xh$if;
    .locals 1

    .line 12
    sget-object v0, Lo/xh$if;->bpf:[Lo/xh$if;

    invoke-virtual {v0}, [Lo/xh$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/xh$if;

    return-object v0
.end method
