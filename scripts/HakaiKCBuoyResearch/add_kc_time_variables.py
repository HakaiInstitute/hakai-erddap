import argparse

import pandas as pd


def convert_kc_buoy(input_path, output_path=None):

    if output_path is None:
        output_path = input_path[:-2] + "_transformed.csv"

    df = pd.read_csv(input_path, skiprows=6)

    df["time"] = pd.to_datetime(df["Date"] + " " + df["Time UTC"])

    df.to_csv(input_path[:-4] + "_transformed.csv")


if __name__ == "__main__":

    parser = argparse.ArgumentParser(
        prog="add_kc_time_variable",
        description="OA CSV format has time and date seperated this just regroup them into a time variable.",
    )
    parser.add_argument(
        "-i", type=str, dest="input_file_csv", help="CSV file to convert"
    )

    args = parser.parse_args()
    convert_kc_buoy(args.input_file_csv)
