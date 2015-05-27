.class final enum Lcom/localytics/android/ProfileHandler$ProfileOperation;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/localytics/android/ProfileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ProfileOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lcom/localytics/android/ProfileHandler$ProfileOperation;>;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/localytics/android/ProfileHandler$ProfileOperation;

.field public static final enum ASSIGN:Lcom/localytics/android/ProfileHandler$ProfileOperation;

.field public static final enum DELETE:Lcom/localytics/android/ProfileHandler$ProfileOperation;

.field public static final enum INCREMENT:Lcom/localytics/android/ProfileHandler$ProfileOperation;

.field public static final enum SETADD:Lcom/localytics/android/ProfileHandler$ProfileOperation;

.field public static final enum SETREMOVE:Lcom/localytics/android/ProfileHandler$ProfileOperation;


# instance fields
.field private final operation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 384
    new-instance v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;

    const-string v1, "ASSIGN"

    const-string v2, "assign"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/localytics/android/ProfileHandler$ProfileOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->ASSIGN:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    .line 385
    new-instance v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;

    const-string v1, "DELETE"

    const-string v2, "delete"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2}, Lcom/localytics/android/ProfileHandler$ProfileOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->DELETE:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    .line 386
    new-instance v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;

    const-string v1, "SETADD"

    const-string v2, "set-add"

    const/4 v3, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcom/localytics/android/ProfileHandler$ProfileOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->SETADD:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    .line 387
    new-instance v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;

    const-string v1, "SETREMOVE"

    const-string v2, "set-remove"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/localytics/android/ProfileHandler$ProfileOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->SETREMOVE:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    .line 388
    new-instance v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;

    const-string v1, "INCREMENT"

    const-string v2, "increment"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v3, v2}, Lcom/localytics/android/ProfileHandler$ProfileOperation;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->INCREMENT:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    .line 382
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/localytics/android/ProfileHandler$ProfileOperation;

    sget-object v1, Lcom/localytics/android/ProfileHandler$ProfileOperation;->ASSIGN:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/localytics/android/ProfileHandler$ProfileOperation;->DELETE:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/localytics/android/ProfileHandler$ProfileOperation;->SETADD:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/localytics/android/ProfileHandler$ProfileOperation;->SETREMOVE:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/localytics/android/ProfileHandler$ProfileOperation;->INCREMENT:Lcom/localytics/android/ProfileHandler$ProfileOperation;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->$VALUES:[Lcom/localytics/android/ProfileHandler$ProfileOperation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Ljava/lang/String;)V"
        }
    .end annotation

    .line 393
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 394
    iput-object p3, p0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->operation:Ljava/lang/String;

    .line 395
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/localytics/android/ProfileHandler$ProfileOperation;
    .locals 1

    .line 382
    const-class v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;

    return-object v0
.end method

.method public static values()[Lcom/localytics/android/ProfileHandler$ProfileOperation;
    .locals 1

    .line 382
    sget-object v0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->$VALUES:[Lcom/localytics/android/ProfileHandler$ProfileOperation;

    invoke-virtual {v0}, [Lcom/localytics/android/ProfileHandler$ProfileOperation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/localytics/android/ProfileHandler$ProfileOperation;

    return-object v0
.end method


# virtual methods
.method public getOperationString()Ljava/lang/String;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/localytics/android/ProfileHandler$ProfileOperation;->operation:Ljava/lang/String;

    return-object v0
.end method
