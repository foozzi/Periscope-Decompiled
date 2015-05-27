.class public final enum Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/periscope/android/ui/broadcast/ViewerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "\u02ca"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Ltv/periscope/android/ui/broadcast/ViewerActivity$\u02ca;>;"
    }
.end annotation


# static fields
.field private static final synthetic bDB:[Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

.field public static final enum bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

.field public static final enum bDy:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

.field public static final enum bDz:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;


# instance fields
.field public final bDA:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 110
    new-instance v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    const-string v1, "Subscribe"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    .line 111
    new-instance v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    const-string v1, "Replay"

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDy:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    .line 112
    new-instance v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    const-string v1, "Summary"

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDz:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    .line 109
    const/4 v0, 0x3

    new-array v0, v0, [Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDx:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDy:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDz:Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDB:[Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 116
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    iput-boolean p3, p0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDA:Z

    .line 118
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;
    .locals 1

    .line 109
    const-class v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    return-object v0
.end method

.method public static values()[Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;
    .locals 1

    .line 109
    sget-object v0, Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->bDB:[Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    invoke-virtual {v0}, [Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltv/periscope/android/ui/broadcast/ViewerActivity$ˊ;

    return-object v0
.end method
