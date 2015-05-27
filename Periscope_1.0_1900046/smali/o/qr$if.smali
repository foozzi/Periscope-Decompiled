.class public final enum Lo/qr$if;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/qr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/qr$if;>;"
    }
.end annotation


# static fields
.field public static final enum Wf:Lo/qr$if;

.field public static final enum Wg:Lo/qr$if;

.field public static final enum Wh:Lo/qr$if;

.field public static final enum Wi:Lo/qr$if;

.field public static final enum Wj:Lo/qr$if;

.field public static final enum Wk:Lo/qr$if;

.field public static final enum Wl:Lo/qr$if;

.field private static final synthetic Wn:[Lo/qr$if;


# instance fields
.field public final Wm:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 75
    new-instance v0, Lo/qr$if;

    const-string v1, "WIFI_MAC_ADDRESS"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lo/qr$if;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/qr$if;->Wf:Lo/qr$if;

    .line 76
    new-instance v0, Lo/qr$if;

    const-string v1, "BLUETOOTH_MAC_ADDRESS"

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lo/qr$if;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/qr$if;->Wg:Lo/qr$if;

    .line 79
    new-instance v0, Lo/qr$if;

    const-string v1, "FONT_TOKEN"

    const/4 v2, 0x2

    const/16 v3, 0x35

    invoke-direct {v0, v1, v2, v3}, Lo/qr$if;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/qr$if;->Wh:Lo/qr$if;

    .line 80
    new-instance v0, Lo/qr$if;

    const-string v1, "ANDROID_ID"

    const/4 v2, 0x3

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lo/qr$if;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/qr$if;->Wi:Lo/qr$if;

    .line 81
    new-instance v0, Lo/qr$if;

    const-string v1, "ANDROID_DEVICE_ID"

    const/4 v2, 0x4

    const/16 v3, 0x65

    invoke-direct {v0, v1, v2, v3}, Lo/qr$if;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/qr$if;->Wj:Lo/qr$if;

    .line 82
    new-instance v0, Lo/qr$if;

    const-string v1, "ANDROID_SERIAL"

    const/4 v2, 0x5

    const/16 v3, 0x66

    invoke-direct {v0, v1, v2, v3}, Lo/qr$if;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/qr$if;->Wk:Lo/qr$if;

    .line 83
    new-instance v0, Lo/qr$if;

    const-string v1, "ANDROID_ADVERTISING_ID"

    const/4 v2, 0x6

    const/16 v3, 0x67

    invoke-direct {v0, v1, v2, v3}, Lo/qr$if;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lo/qr$if;->Wl:Lo/qr$if;

    .line 73
    const/4 v0, 0x7

    new-array v0, v0, [Lo/qr$if;

    sget-object v1, Lo/qr$if;->Wf:Lo/qr$if;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/qr$if;->Wg:Lo/qr$if;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/qr$if;->Wh:Lo/qr$if;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/qr$if;->Wi:Lo/qr$if;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lo/qr$if;->Wj:Lo/qr$if;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lo/qr$if;->Wk:Lo/qr$if;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lo/qr$if;->Wl:Lo/qr$if;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lo/qr$if;->Wn:[Lo/qr$if;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput p3, p0, Lo/qr$if;->Wm:I

    .line 89
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/qr$if;
    .locals 1

    .line 73
    const-class v0, Lo/qr$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/qr$if;

    return-object v0
.end method

.method public static values()[Lo/qr$if;
    .locals 1

    .line 73
    sget-object v0, Lo/qr$if;->Wn:[Lo/qr$if;

    invoke-virtual {v0}, [Lo/qr$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/qr$if;

    return-object v0
.end method
