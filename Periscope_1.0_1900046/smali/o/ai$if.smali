.class public final Lo/ai$if;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation


# instance fields
.field private GQ:Z

.field private GR:Z

.field private GS:Ljava/lang/String;

.field private GT:Lo/ᒴ$ˎ;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Ť()Lo/ai;
    .locals 6

    new-instance v0, Lo/ai;

    iget-boolean v1, p0, Lo/ai$if;->GQ:Z

    iget-boolean v2, p0, Lo/ai$if;->GR:Z

    iget-object v3, p0, Lo/ai$if;->GS:Ljava/lang/String;

    iget-object v4, p0, Lo/ai$if;->GT:Lo/ᒴ$ˎ;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lo/ai;-><init>(ZZLjava/lang/String;Lo/ᒴ$ˎ;Lo/ai$1;)V

    return-object v0
.end method
