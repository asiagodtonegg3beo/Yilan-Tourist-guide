.class public Lcom/google/appinventor/components/runtime/Clock;
.super Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;
.source "Clock.java"

# interfaces
.implements Lcom/google/appinventor/components/runtime/Component;
.implements Lcom/google/appinventor/components/runtime/AlarmHandler;
.implements Lcom/google/appinventor/components/runtime/OnStopListener;
.implements Lcom/google/appinventor/components/runtime/OnResumeListener;
.implements Lcom/google/appinventor/components/runtime/OnDestroyListener;
.implements Lcom/google/appinventor/components/runtime/Deleteable;


# annotations
.annotation runtime Lcom/google/appinventor/components/annotations/DesignerComponent;
    category = .enum Lcom/google/appinventor/components/common/ComponentCategory;->SENSORS:Lcom/google/appinventor/components/common/ComponentCategory;
    description = "<p>Non-visible component that provides the instant in time using the internal clock on the phone. It can fire a timer at regularly set intervals and perform time calculations, manipulations, and conversions.</p> <p>Methods to convert an instant to text are also available. Acceptable patterns are empty string, MM/DD/YYYY HH:mm:ss a, or MMM d, yyyyHH:mm. The empty string will provide the default format, which is \"MMM d, yyyy HH:mm:ss a\" for FormatDateTime \"MMM d, yyyy\" for FormatDate. To see all possible format, please see <a href=\"https://docs.oracle.com/javase/7/docs/api/java/text/SimpleDateFormat.html\" _target=\"_blank\">here</a>. </p> "
    iconName = "images/clock.png"
    nonVisible = true
    version = 0x4
.end annotation

.annotation runtime Lcom/google/appinventor/components/annotations/SimpleObject;
.end annotation


# static fields
.field private static final DEFAULT_ENABLED:Z = true

.field private static final DEFAULT_INTERVAL:I = 0x3e8


# instance fields
.field private onScreen:Z

.field private timerAlwaysFires:Z

.field private timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->timerAlwaysFires:Z

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->onScreen:Z

    .line 108
    return-void
.end method

.method public constructor <init>(Lcom/google/appinventor/components/runtime/ComponentContainer;)V
    .locals 3
    .param p1, "container"    # Lcom/google/appinventor/components/runtime/ComponentContainer;

    .prologue
    const/4 v2, 0x1

    .line 89
    invoke-interface {p1}, Lcom/google/appinventor/components/runtime/ComponentContainer;->$form()Lcom/google/appinventor/components/runtime/Form;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/appinventor/components/runtime/AndroidNonvisibleComponent;-><init>(Lcom/google/appinventor/components/runtime/Form;)V

    .line 80
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Clock;->timerAlwaysFires:Z

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->onScreen:Z

    .line 90
    new-instance v0, Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/16 v1, 0x3e8

    invoke-direct {v0, p0, v2, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;-><init>(Lcom/google/appinventor/components/runtime/AlarmHandler;ZI)V

    iput-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    .line 93
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnResume(Lcom/google/appinventor/components/runtime/OnResumeListener;)V

    .line 94
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnStop(Lcom/google/appinventor/components/runtime/OnStopListener;)V

    .line 95
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    invoke-virtual {v0, p0}, Lcom/google/appinventor/components/runtime/Form;->registerForOnDestroy(Lcom/google/appinventor/components/runtime/OnDestroyListener;)V

    .line 97
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    instance-of v0, v0, Lcom/google/appinventor/components/runtime/ReplForm;

    if-eqz v0, :cond_0

    .line 100
    iput-boolean v2, p0, Lcom/google/appinventor/components/runtime/Clock;->onScreen:Z

    .line 102
    :cond_0
    return-void
.end method

.method public static AddDays(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2
    .param p0, "instant"    # Ljava/util/Calendar;
    .param p1, "quantity"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns an instant in time some days after the given instant."
    .end annotation

    .prologue
    .line 402
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 403
    .local v0, "newInstant":Ljava/util/Calendar;
    const/4 v1, 0x5

    invoke-static {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 404
    return-object v0
.end method

.method public static AddDuration(Ljava/util/Calendar;J)Ljava/util/Calendar;
    .locals 1
    .param p0, "instant"    # Ljava/util/Calendar;
    .param p1, "quantity"    # J
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns an instant in time some duration after the argument"
    .end annotation

    .prologue
    .line 374
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 375
    .local v0, "newInstant":Ljava/util/Calendar;
    invoke-static {v0, p1, p2}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAddInMillis(Ljava/util/Calendar;J)V

    .line 376
    return-object v0
.end method

.method public static AddHours(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2
    .param p0, "instant"    # Ljava/util/Calendar;
    .param p1, "quantity"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns an instant in time some hours after the given instant."
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 396
    .local v0, "newInstant":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-static {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 397
    return-object v0
.end method

.method public static AddMinutes(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2
    .param p0, "instant"    # Ljava/util/Calendar;
    .param p1, "quantity"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns an instant in time some minutes after the given instant."
    .end annotation

    .prologue
    .line 388
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 389
    .local v0, "newInstant":Ljava/util/Calendar;
    const/16 v1, 0xc

    invoke-static {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 390
    return-object v0
.end method

.method public static AddMonths(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2
    .param p0, "instant"    # Ljava/util/Calendar;
    .param p1, "quantity"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns an instant in time some months after the given instant."
    .end annotation

    .prologue
    .line 416
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 417
    .local v0, "newInstant":Ljava/util/Calendar;
    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 418
    return-object v0
.end method

.method public static AddSeconds(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2
    .param p0, "instant"    # Ljava/util/Calendar;
    .param p1, "quantity"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns an instant in time some seconds after the given instant."
    .end annotation

    .prologue
    .line 381
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 382
    .local v0, "newInstant":Ljava/util/Calendar;
    const/16 v1, 0xd

    invoke-static {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 383
    return-object v0
.end method

.method public static AddWeeks(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2
    .param p0, "instant"    # Ljava/util/Calendar;
    .param p1, "quantity"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns An instant in time some weeks after the given instant."
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 410
    .local v0, "newInstant":Ljava/util/Calendar;
    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 411
    return-object v0
.end method

.method public static AddYears(Ljava/util/Calendar;I)Ljava/util/Calendar;
    .locals 2
    .param p0, "instant"    # Ljava/util/Calendar;
    .param p1, "quantity"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns an instant in time some years after the given instant."
    .end annotation

    .prologue
    .line 423
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 424
    .local v0, "newInstant":Ljava/util/Calendar;
    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->DateAdd(Ljava/util/Calendar;II)V

    .line 425
    return-object v0
.end method

.method public static DayOfMonth(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "instant"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the day of the month (1-31) from the instant."
    .end annotation

    .prologue
    .line 537
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Day(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public static Duration(Ljava/util/Calendar;Ljava/util/Calendar;)J
    .locals 4
    .param p0, "start"    # Ljava/util/Calendar;
    .param p1, "end"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns duration, which is milliseconds elapsed between instants."
    .end annotation

    .prologue
    .line 438
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public static DurationToDays(J)J
    .locals 2
    .param p0, "duration"    # J
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Converts the duration to the number of days."
    .end annotation

    .prologue
    .line 482
    const/4 v0, 0x5

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/Dates;->ConvertDuration(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static DurationToHours(J)J
    .locals 2
    .param p0, "duration"    # J
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Converts the duration to the number of hours."
    .end annotation

    .prologue
    .line 471
    const/16 v0, 0xb

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/Dates;->ConvertDuration(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static DurationToMinutes(J)J
    .locals 2
    .param p0, "duration"    # J
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Converts the duration to the number of minutes."
    .end annotation

    .prologue
    .line 460
    const/16 v0, 0xc

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/Dates;->ConvertDuration(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static DurationToSeconds(J)J
    .locals 2
    .param p0, "duration"    # J
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Converts the duration to the number of seconds."
    .end annotation

    .prologue
    .line 449
    const/16 v0, 0xd

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/Dates;->ConvertDuration(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static DurationToWeeks(J)J
    .locals 2
    .param p0, "duration"    # J
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Converts the duration to the number of weeks."
    .end annotation

    .prologue
    .line 493
    const/4 v0, 0x3

    invoke-static {p0, p1, v0}, Lcom/google/appinventor/components/runtime/util/Dates;->ConvertDuration(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static FormatDate(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "instant"    # Ljava/util/Calendar;
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Text representing the date of an instant in the specified pattern"
    .end annotation

    .prologue
    .line 632
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->FormatDate(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 633
    :catch_0
    move-exception v0

    .line 634
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "Illegal argument for pattern in Clock.FormatDate. Acceptable values are empty string, MM/dd/YYYY, or MMM d, yyyy. For all possible patterns, see https://docs.oracle.com/javase/7/docs/api/java/text/SimpleDateFormat.html"

    const-string v3, "Sorry to be so picky."

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public static FormatDateTime(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "instant"    # Ljava/util/Calendar;
    .param p1, "pattern"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns text representing the date and time of an instant in the specified pattern"
    .end annotation

    .prologue
    .line 611
    :try_start_0
    invoke-static {p0, p1}, Lcom/google/appinventor/components/runtime/util/Dates;->FormatDateTime(Ljava/util/Calendar;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "Illegal argument for pattern in Clock.FormatDateTime. Acceptable values are empty string, MM/dd/YYYY hh:mm:ss a, MMM d, yyyy HH:mm For all possible patterns, see https://docs.oracle.com/javase/7/docs/api/java/text/SimpleDateFormat.html"

    const-string v3, "Sorry to be so picky."

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public static FormatTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "instant"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Text representing the time of an instant"
    .end annotation

    .prologue
    .line 651
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->FormatTime(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetMillis(Ljava/util/Calendar;)J
    .locals 2
    .param p0, "instant"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the instant in time measured as milliseconds since 1970."
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static Hour(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "instant"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the hour of the day (0-23) from the instant."
    .end annotation

    .prologue
    .line 526
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Hour(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public static MakeInstant(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 4
    .param p0, "from"    # Ljava/lang/String;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns an instant in time specified by MM/dd/YYYY hh:mm:ss or MM/dd/YYYY or hh:mm."
    .end annotation

    .prologue
    .line 244
    :try_start_0
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->DateValue(Ljava/lang/String;)Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;

    const-string v2, "Argument to MakeInstant should have form MM/dd/YYYY hh:mm:ss, or MM/dd/YYYY or hh:mm"

    const-string v3, "Sorry to be so picky."

    invoke-direct {v1, v2, v3}, Lcom/google/appinventor/components/runtime/errors/YailRuntimeError;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v1
.end method

.method public static MakeInstantFromMillis(J)Ljava/util/Calendar;
    .locals 2
    .param p0, "millis"    # J
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns an instant in time specified by the milliseconds since 1970 in UTC."
    .end annotation

    .prologue
    .line 355
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/Dates;->Now()Ljava/util/Calendar;

    move-result-object v0

    .line 356
    .local v0, "instant":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 357
    return-object v0
.end method

.method public static Minute(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "instant"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the minute of the hour (0-59) from the instant."
    .end annotation

    .prologue
    .line 515
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Minute(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public static Month(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "instant"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the month of the year represented as a number from 1 to 12)."
    .end annotation

    .prologue
    .line 572
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Month(Ljava/util/Calendar;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static MonthName(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "instant"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the name of the month from the instant, e.g., January, February, March..."
    .end annotation

    .prologue
    .line 584
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->MonthName(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Now()Ljava/util/Calendar;
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the current instant in time read from phone\'s clock."
    .end annotation

    .prologue
    .line 226
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/Dates;->Now()Ljava/util/Calendar;

    move-result-object v0

    return-object v0
.end method

.method public static Second(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "instant"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the second of the minute (0-59) from the instant."
    .end annotation

    .prologue
    .line 504
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Second(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public static SystemTime()J
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the phone\'s internal time."
    .end annotation

    .prologue
    .line 220
    invoke-static {}, Lcom/google/appinventor/components/runtime/util/Dates;->Timer()J

    move-result-wide v0

    return-wide v0
.end method

.method public static Weekday(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "instant"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the day of the week represented as a number from 1 (Sunday) to 7 (Saturday)."
    .end annotation

    .prologue
    .line 549
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Weekday(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method

.method public static WeekdayName(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 1
    .param p0, "instant"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns the name of the day of the week from the instant."
    .end annotation

    .prologue
    .line 560
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->WeekdayName(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static Year(Ljava/util/Calendar;)I
    .locals 1
    .param p0, "instant"    # Ljava/util/Calendar;
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "The year"
    .end annotation

    .prologue
    .line 595
    invoke-static {p0}, Lcom/google/appinventor/components/runtime/util/Dates;->Year(Ljava/util/Calendar;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public MakeDate(III)Ljava/util/Calendar;
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns an instant in time specified by year, month, date in UTC.\nValid values for the month field are 1-12 and 1-31 for the day field."
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 263
    add-int/lit8 v3, p2, -0x1

    .line 265
    .local v3, "jMonth":I
    :try_start_0
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, p1, v3, p3}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 266
    .local v0, "cal":Ljava/util/GregorianCalendar;
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/GregorianCalendar;->setLenient(Z)V

    .line 270
    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    .end local v0    # "cal":Ljava/util/GregorianCalendar;
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/Dates;->DateInstant(III)Ljava/util/Calendar;

    move-result-object v2

    .line 276
    .local v2, "instant":Ljava/util/Calendar;
    return-object v2

    .line 271
    .end local v2    # "instant":Ljava/util/Calendar;
    :catch_0
    move-exception v1

    .line 272
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v5, "MakeDate"

    const/16 v6, 0x961

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6, v7}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public MakeInstantFromParts(IIIIII)Ljava/util/Calendar;
    .locals 9
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "hour"    # I
    .param p5, "minute"    # I
    .param p6, "second"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns an instant in time specified by year, month, date, hour, minute, second in UTC."
    .end annotation

    .prologue
    const/16 v8, 0x961

    const/4 v7, 0x0

    .line 317
    add-int/lit8 v3, p2, -0x1

    .line 318
    .local v3, "jMonth":I
    const/4 v1, 0x0

    .line 320
    .local v1, "instant":Ljava/util/Calendar;
    :try_start_0
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2, p1, v3, p3}, Ljava/util/GregorianCalendar;-><init>(III)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .end local v1    # "instant":Ljava/util/Calendar;
    .local v2, "instant":Ljava/util/Calendar;
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setLenient(Z)V

    .line 325
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v2

    .line 330
    .end local v2    # "instant":Ljava/util/Calendar;
    .restart local v1    # "instant":Ljava/util/Calendar;
    :goto_0
    invoke-static {p1, p2, p3}, Lcom/google/appinventor/components/runtime/util/Dates;->DateInstant(III)Ljava/util/Calendar;

    move-result-object v1

    .line 333
    const/16 v4, 0xb

    :try_start_2
    invoke-virtual {v1, v4, p4}, Ljava/util/Calendar;->set(II)V

    .line 334
    const/16 v4, 0xc

    invoke-virtual {v1, v4, p5}, Ljava/util/Calendar;->set(II)V

    .line 335
    const/16 v4, 0xd

    invoke-virtual {v1, v4, p6}, Ljava/util/Calendar;->set(II)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1

    .line 341
    :goto_1
    return-object v1

    .line 326
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :goto_2
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v5, "MakeInstantFromParts"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v8, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0

    .line 337
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 338
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    iget-object v4, p0, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v5, "MakeInstantFromParts"

    new-array v6, v7, [Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v8, v6}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_1

    .line 326
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "instant":Ljava/util/Calendar;
    .restart local v2    # "instant":Ljava/util/Calendar;
    :catch_2
    move-exception v0

    move-object v1, v2

    .end local v2    # "instant":Ljava/util/Calendar;
    .restart local v1    # "instant":Ljava/util/Calendar;
    goto :goto_2
.end method

.method public MakeTime(III)Ljava/util/Calendar;
    .locals 6
    .param p1, "hour"    # I
    .param p2, "minute"    # I
    .param p3, "second"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleFunction;
        description = "Returns an instant in time specified by hour, minute, second in UTC."
    .end annotation

    .prologue
    .line 290
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 292
    .local v1, "instant":Ljava/util/Calendar;
    const/16 v2, 0xb

    :try_start_0
    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 293
    const/16 v2, 0xc

    invoke-virtual {v1, v2, p2}, Ljava/util/Calendar;->set(II)V

    .line 294
    const/16 v2, 0xd

    invoke-virtual {v1, v2, p3}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :goto_0
    return-object v1

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v2, p0, Lcom/google/appinventor/components/runtime/Clock;->form:Lcom/google/appinventor/components/runtime/Form;

    const-string v3, "MakeTime"

    const/16 v4, 0x961

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3, v4, v5}, Lcom/google/appinventor/components/runtime/Form;->dispatchErrorOccurredEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;I[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public Timer()V
    .locals 2
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleEvent;
        description = "The Timer event runs when the timer has gone off."
    .end annotation

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->timerAlwaysFires:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->onScreen:Z

    if-eqz v0, :cond_1

    .line 119
    :cond_0
    const-string v0, "Timer"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/appinventor/components/runtime/EventDispatcher;->dispatchEvent(Lcom/google/appinventor/components/runtime/Component;Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 121
    :cond_1
    return-void
.end method

.method public TimerAlwaysFires(Z)V
    .locals 0
    .param p1, "always"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 202
    iput-boolean p1, p0, Lcom/google/appinventor/components/runtime/Clock;->timerAlwaysFires:Z

    .line 203
    return-void
.end method

.method public TimerAlwaysFires()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Will fire even when application is not showing on the screen if true"
    .end annotation

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->timerAlwaysFires:Z

    return v0
.end method

.method public TimerEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 174
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 175
    return-void
.end method

.method public TimerEnabled()Z
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Fires timer if true"
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled()Z

    move-result v0

    return v0
.end method

.method public TimerInterval()I
    .locals 1
    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
        category = .enum Lcom/google/appinventor/components/annotations/PropertyCategory;->BEHAVIOR:Lcom/google/appinventor/components/annotations/PropertyCategory;
        description = "Interval between timer events in ms"
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval()I

    move-result v0

    return v0
.end method

.method public TimerInterval(I)V
    .locals 1
    .param p1, "interval"    # I
    .annotation runtime Lcom/google/appinventor/components/annotations/DesignerProperty;
        defaultValue = "1000"
        editorType = "non_negative_integer"
    .end annotation

    .annotation runtime Lcom/google/appinventor/components/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    invoke-virtual {v0, p1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Interval(I)V

    .line 149
    return-void
.end method

.method public alarm()V
    .locals 0

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/google/appinventor/components/runtime/Clock;->Timer()V

    .line 210
    return-void
.end method

.method public onDelete()V
    .locals 2

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 672
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/appinventor/components/runtime/Clock;->timerInternal:Lcom/google/appinventor/components/runtime/util/TimerInternal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/appinventor/components/runtime/util/TimerInternal;->Enabled(Z)V

    .line 667
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->onScreen:Z

    .line 662
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 656
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/appinventor/components/runtime/Clock;->onScreen:Z

    .line 657
    return-void
.end method
