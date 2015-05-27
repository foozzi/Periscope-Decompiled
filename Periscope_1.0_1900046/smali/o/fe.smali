.class public abstract enum Lo/fe;
.super Ljava/lang/Enum;
.source ""

# interfaces
.implements Lo/fk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<Lo/fe;>;Lo/fk;"
    }
.end annotation


# static fields
.field public static final enum JQ:Lo/fe;

.field public static final enum JR:Lo/fe;

.field public static final enum JS:Lo/fe;

.field public static final enum JT:Lo/fe;

.field public static final enum JU:Lo/fe;

.field private static final synthetic JV:[Lo/fe;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    new-instance v0, Lo/ff;

    const-string v1, "IDENTITY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lo/ff;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/fe;->JQ:Lo/fe;

    .line 52
    new-instance v0, Lo/fg;

    const-string v1, "UPPER_CAMEL_CASE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lo/fg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/fe;->JR:Lo/fe;

    .line 71
    new-instance v0, Lo/fh;

    const-string v1, "UPPER_CAMEL_CASE_WITH_SPACES"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lo/fh;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/fe;->JS:Lo/fe;

    .line 89
    new-instance v0, Lo/fi;

    const-string v1, "LOWER_CASE_WITH_UNDERSCORES"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lo/fi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/fe;->JT:Lo/fe;

    .line 112
    new-instance v0, Lo/fj;

    const-string v1, "LOWER_CASE_WITH_DASHES"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lo/fj;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lo/fe;->JU:Lo/fe;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Lo/fe;

    sget-object v1, Lo/fe;->JQ:Lo/fe;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lo/fe;->JR:Lo/fe;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lo/fe;->JS:Lo/fe;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lo/fe;->JT:Lo/fe;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lo/fe;->JU:Lo/fe;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lo/fe;->JV:[Lo/fe;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILo/ff;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lo/fe;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lo/fe;
    .locals 1

    .line 30
    const-class v0, Lo/fe;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lo/fe;

    return-object v0
.end method

.method public static values()[Lo/fe;
    .locals 1

    .line 30
    sget-object v0, Lo/fe;->JV:[Lo/fe;

    invoke-virtual {v0}, [Lo/fe;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lo/fe;

    return-object v0
.end method

.method static synthetic ʾ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 30
    invoke-static {p0, p1}, Lo/fe;->ι(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ˊ(CLjava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 164
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p2, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static ˣ(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    const/4 v3, 0x0

    .line 140
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 142
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v3, v0, :cond_1

    .line 143
    invoke-static {v4}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    goto :goto_1

    .line 147
    :cond_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 148
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_0

    .line 151
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v3, v0, :cond_2

    .line 152
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 155
    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-nez v0, :cond_3

    .line 156
    invoke-static {v4}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, p0, v3}, Lo/fe;->ˊ(CLjava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 159
    :cond_3
    return-object p0
.end method

.method static synthetic ו(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 30
    invoke-static {p0}, Lo/fe;->ˣ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ι(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 125
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 126
    invoke-static {v3}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
