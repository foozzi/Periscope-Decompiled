.class public Lo/nz$if;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/rt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/nz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/rt<Lo/nz;>;"
    }
.end annotation


# instance fields
.field private final gson:Lo/fl;


# direct methods
.method public constructor <init>(Lo/fl;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lo/nz$if;->gson:Lo/fl;

    .line 97
    return-void
.end method


# virtual methods
.method public ˋ(Lo/nz;)[B
    .locals 2

    .line 101
    iget-object v0, p0, Lo/nz$if;->gson:Lo/fl;

    invoke-virtual {v0, p1}, Lo/fl;->ᴸ(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public synthetic ᑊ(Ljava/lang/Object;)[B
    .locals 1

    .line 92
    move-object v0, p1

    check-cast v0, Lo/nz;

    invoke-virtual {p0, v0}, Lo/nz$if;->ˋ(Lo/nz;)[B

    move-result-object v0

    return-object v0
.end method
