.class final enum Lo/qh$if;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/qh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/qh$if;>;"
    }
.end annotation


# static fields
.field public static final enum VB:Lo/qh$if;

.field public static final enum VC:Lo/qh$if;

.field public static final enum VD:Lo/qh$if;

.field public static final enum VE:Lo/qh$if;

.field public static final enum VF:Lo/qh$if;

.field public static final enum VG:Lo/qh$if;

.field public static final enum VH:Lo/qh$if;

.field public static final enum VI:Lo/qh$if;

.field public static final enum VJ:Lo/qh$if;

.field public static final enum VK:Lo/qh$if;

.field private static final VL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<Ljava/lang/String;Lo/qh$if;>;"
        }
    .end annotation
.end field

.field private static final synthetic VM:[Lo/qh$if;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 159
    new-instance v0, Lo/qh$if;

    const-string v1, "X86_32"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/qh$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/qh$if;->VB:Lo/qh$if;

    .line 160
    new-instance v0, Lo/qh$if;

    const-string v1, "X86_64"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/qh$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/qh$if;->VC:Lo/qh$if;

    .line 161
    new-instance v0, Lo/qh$if;

    const-string v1, "ARM_UNKNOWN"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/qh$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/qh$if;->VD:Lo/qh$if;

    .line 162
    new-instance v0, Lo/qh$if;

    const-string v1, "PPC"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lo/qh$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/qh$if;->VE:Lo/qh$if;

    .line 163
    new-instance v0, Lo/qh$if;

    const-string v1, "PPC64"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lo/qh$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/qh$if;->VF:Lo/qh$if;

    .line 164
    new-instance v0, Lo/qh$if;

    const-string v1, "ARMV6"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lo/qh$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/qh$if;->VG:Lo/qh$if;

    .line 165
    new-instance v0, Lo/qh$if;

    const-string v1, "ARMV7"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lo/qh$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/qh$if;->VH:Lo/qh$if;

    .line 166
    new-instance v0, Lo/qh$if;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lo/qh$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/qh$if;->VI:Lo/qh$if;

    .line 167
    new-instance v0, Lo/qh$if;

    const-string v1, "ARMV7S"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lo/qh$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/qh$if;->VJ:Lo/qh$if;

    .line 168
    new-instance v0, Lo/qh$if;

    const-string v1, "ARM64"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lo/qh$if;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/qh$if;->VK:Lo/qh$if;

    .line 158
    const/16 v0, 0xa

    new-array v0, v0, [Lo/qh$if;

    sget-object v1, Lo/qh$if;->VB:Lo/qh$if;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/qh$if;->VC:Lo/qh$if;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/qh$if;->VD:Lo/qh$if;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/qh$if;->VE:Lo/qh$if;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lo/qh$if;->VF:Lo/qh$if;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lo/qh$if;->VG:Lo/qh$if;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lo/qh$if;->VH:Lo/qh$if;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lo/qh$if;->VI:Lo/qh$if;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lo/qh$if;->VJ:Lo/qh$if;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lo/qh$if;->VK:Lo/qh$if;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lo/qh$if;->VM:[Lo/qh$if;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lo/qh$if;->VL:Ljava/util/Map;

    .line 173
    sget-object v0, Lo/qh$if;->VL:Ljava/util/Map;

    const-string v1, "armeabi-v7a"

    sget-object v2, Lo/qh$if;->VH:Lo/qh$if;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v0, Lo/qh$if;->VL:Ljava/util/Map;

    const-string v1, "armeabi"

    sget-object v2, Lo/qh$if;->VG:Lo/qh$if;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lo/qh$if;->VL:Ljava/util/Map;

    const-string v1, "x86"

    sget-object v2, Lo/qh$if;->VB:Lo/qh$if;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 158
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static cw()Lo/qh$if;
    .locals 5

    .line 183
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 185
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {}, Lo/pj;->cd()Lo/ps;

    move-result-object v0

    const-string v1, "Fabric"

    const-string v2, "Architecture#getValue()::Build.CPU_ABI returned null or empty"

    invoke-interface {v0, v1, v2}, Lo/ps;->ˑ(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lo/qh$if;->VI:Lo/qh$if;

    return-object v0

    .line 191
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 192
    sget-object v0, Lo/qh$if;->VL:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/qh$if;

    move-object v4, v0

    .line 193
    if-nez v4, :cond_1

    .line 194
    sget-object v4, Lo/qh$if;->VI:Lo/qh$if;

    .line 196
    :cond_1
    return-object v4
.end method

.method public static valueOf(Ljava/lang/String;)Lo/qh$if;
    .locals 1

    .line 158
    const-class v0, Lo/qh$if;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/qh$if;

    return-object v0
.end method

.method public static values()[Lo/qh$if;
    .locals 1

    .line 158
    sget-object v0, Lo/qh$if;->VM:[Lo/qh$if;

    invoke-virtual {v0}, [Lo/qh$if;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/qh$if;

    return-object v0
.end method
