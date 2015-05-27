.class public final Lo/ai;
.super Ljava/lang/Object;

# interfaces
.implements Lo/ᒰ$if$ˎ;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ai$1;,
        Lo/ai$if;
    }
.end annotation


# static fields
.field public static final GL:Lo/ai;


# instance fields
.field private final GM:Z

.field private final GN:Z

.field private final GO:Ljava/lang/String;

.field private final GP:Lo/ᒴ$ˎ;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lo/ai$if;

    invoke-direct {v0}, Lo/ai$if;-><init>()V

    invoke-virtual {v0}, Lo/ai$if;->Ť()Lo/ai;

    move-result-object v0

    sput-object v0, Lo/ai;->GL:Lo/ai;

    return-void
.end method

.method private constructor <init>(ZZLjava/lang/String;Lo/ᒴ$ˎ;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo/ai;->GM:Z

    iput-boolean p2, p0, Lo/ai;->GN:Z

    iput-object p3, p0, Lo/ai;->GO:Ljava/lang/String;

    iput-object p4, p0, Lo/ai;->GP:Lo/ᒴ$ˎ;

    return-void
.end method

.method synthetic constructor <init>(ZZLjava/lang/String;Lo/ᒴ$ˎ;Lo/ai$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lo/ai;-><init>(ZZLjava/lang/String;Lo/ᒴ$ˎ;)V

    return-void
.end method


# virtual methods
.method public Ĵ()Z
    .locals 1

    iget-boolean v0, p0, Lo/ai;->GM:Z

    return v0
.end method

.method public Ł()Z
    .locals 1

    iget-boolean v0, p0, Lo/ai;->GN:Z

    return v0
.end method

.method public ō()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/ai;->GO:Ljava/lang/String;

    return-object v0
.end method

.method public ţ()Lo/ᒴ$ˎ;
    .locals 1

    iget-object v0, p0, Lo/ai;->GP:Lo/ᒴ$ˎ;

    return-object v0
.end method
