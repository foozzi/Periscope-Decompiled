.class public Lo/aeh$ˏ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/aeh;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/aeh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "\u02cf"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/aeh$ˏ$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/aeh<Lo/anf;>;"
    }
.end annotation


# instance fields
.field private final bAf:Lo/anf;

.field private final bAg:Lo/aeh$ˏ$if;

.field private final bAh:I


# direct methods
.method public constructor <init>(Lo/anf;Lo/aeh$ˏ$if;I)V
    .locals 0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    iput-object p1, p0, Lo/aeh$ˏ;->bAf:Lo/anf;

    .line 117
    iput-object p2, p0, Lo/aeh$ˏ;->bAg:Lo/aeh$ˏ$if;

    .line 118
    iput p3, p0, Lo/aeh$ˏ;->bAh:I

    .line 119
    return-void
.end method


# virtual methods
.method public xC()Lo/aeh$ˏ$if;
    .locals 1

    .line 127
    iget-object v0, p0, Lo/aeh$ˏ;->bAg:Lo/aeh$ˏ$if;

    return-object v0
.end method

.method public xD()I
    .locals 1

    .line 131
    iget v0, p0, Lo/aeh$ˏ;->bAh:I

    return v0
.end method

.method public xE()Lo/anf;
    .locals 1

    .line 136
    iget-object v0, p0, Lo/aeh$ˏ;->bAf:Lo/anf;

    return-object v0
.end method

.method public xy()Lo/aeh$ʻ;
    .locals 1

    .line 123
    sget-object v0, Lo/aeh$ʻ;->bAu:Lo/aeh$ʻ;

    return-object v0
.end method
